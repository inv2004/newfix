#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>

typedef struct f {
  char* msg;
  char* pos;
  char* last;
} *FS;

FS finit(char* msg) {
  FS result = malloc(sizeof(struct f));
  // int len = strlen(msg);
  // result->msg = malloc(len + 1);
  // memcpy(result->msg, msg, len+1);
  result->msg = msg;
  result->pos = msg;
  result->last = msg+strlen(msg);
  return result;
}

FS ffree(FS fs) {
  free(fs);
}

char* ftag1(FS fs, int tag) {
  char* result;
  int t;
  while(fs->pos < fs->last) {
    while(*(fs->pos) != '=') {
      t = t * 10 + (*(fs->pos) - '0');
      fs->pos += 1;
    }
    fs->pos += 1;
    if(t == tag) {
      char * start = fs->pos;
      while(*(fs->pos) != '\1') {
        fs->pos += 1;
      }
      int len = fs->pos - start;
      result = malloc(len + 1);
      memcpy(result, start, len);
      result[len] = '\0';
      return result;
    } else {
      t = 0;
      while(*(fs->pos) != '\1') {
        fs->pos += 1;
      }
      fs->pos += 1;
    }
  }
  result = malloc(1);
  result[0] = '\0';
  return result;
}

char* ftag3(FS fs, char* tag) {
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
      return result;
    } else
     	fs->pos = 1 + memchr(fs->pos, '\x01', 1000);
  }
  result = malloc(1);
  result[0] = '\0';
  return result;
}
char* ftag2(FS fs, int tag) {
  char* result;
  int t;
  while(fs->pos < fs->last) {
    while(*(fs->pos) != '=') {
      t = t * 10 + (*(fs->pos) - '0');
      fs->pos += 1;
    }
    fs->pos += 1;
    if(t == tag) {
      char * start = fs->pos;
      while(*(fs->pos) != '\1') {
        fs->pos += 1;
      }
      int len = fs->pos - start;
      result = malloc(len + 1);
      memcpy(result, start, len);
      result[len] = '\0';
      return result;
    } else {
      t = 0;
      while(*(fs->pos) != '\1') {
        fs->pos += 1;
      }
      fs->pos += 1;
    }
  }
  result = malloc(1);
  result[0] = '\0';
  return result;
}

int bench1(char * buf) {
  int result;
  FS f = finit(buf);
  for(int i = 0; i < 20; i++) {
    result += ftag1(f, 190)[0];
  }
  return result;
}

int bench3(char * buf) {
  int result;

  for(int i = 0; i < 20; i++)
  	result += ftag(f, "190=")[0];
  

  return result;
}

int main() {
  char line[2000];
  FILE * fp;
  fp = fopen("../../tests/test1.fix", "r");
  if (fp == NULL) { exit(EXIT_FAILURE); }
  while ((fgets(line, 2000, fp)))
  ;
  fclose(fp);
  // printf("%s", line);

  // struct timespec start, end;
  // clock_gettime(CLOCK_MONOTONIC_RAW, &start);
  int result = 0;
  clock_t start = clock();
  for(int i = 0; i < 1000; i++) {
    result += bench1(line);
  }
  clock_t stop = clock();
  double elapsed = (double)(stop - start) * 1000.0 / CLOCKS_PER_SEC;
  printf("%d: %f\n", result, elapsed / 1000.0);

  result = 0;
  start = clock();
  for(int i = 0; i < 1000; i++) {
    result += bench3(line);
  }
  stop = clock();
  elapsed = (double)(stop - start) * 1000.0 / CLOCKS_PER_SEC;
  printf("%d: %c\n", result, elapsed / 1000.0);

  exit(EXIT_SUCCESS);
}