#include <stddef.h>
#include <string.h>

typedef struct f{
  char* msg;
  char* pos;
  char* last;
} *FS;

FS finit(char* msg) {
  FS result = malloc(sizeof(struct f));
  int len = strlen(msg);
  result->msg = malloc(len + 1);
  memcpy(result->msg, msg, len+1);
  result->pos = msg;
  result->last = msg+strlen(msg);
  return result;
}

FS ffree(FS fs) {
  free(fs);
}

char* ftag(FS fs, char* tag) {
  char* result;
  int tlen = strlen(tag);


  while(fs->pos < fs->last) {
    if(0 == memcmp(fs->pos, tag, tlen)) {
      fs->pos += tlen;
      char* next = memchr(fs->pos, '\x01', 1000);
      int len = next - fs->pos;
      result = malloc(len + 1);
      memcpy(result, fs->pos, len);
      result[len] = '\0';
      fs->pos = next;
      // printf("RES %s\n", result);
      return result;
    } else {
      // printf("D2\n");
      fs->pos = 1 + memchr(fs->pos, '\x01', 1000);
    }
  }
  result = malloc(1);
  result[0] = '\0';
  return result;
}

// proc tag(f: var StreamFix2, tag: string): string =
//   let tLen = cast[csize_t](tag.len)
//   let tAddr = tag[0].unsafeAddr
//   while f.pos < f.last:
//     if 0 == c_memcmp(f.pos, tAddr, tLen):
//       f.pos = cast[pointer](cast[uint](f.pos) + tLen)
//       let nextAddr = c_memchr(f.pos, '\x01', cast[csize_t](1000))
//       let len = cast[ByteAddress](nextAddr) - cast[ByteAddress](f.pos)
//       result = newString(len)
//       copyMem(result[0].addr, f.pos, len)
//       return
//     else:
//       f.pos = c_memchr(f.pos, '\x01', cast[csize_t](1000))
//       f.pos = cast[pointer](cast[uint](f.pos) + 1u)

