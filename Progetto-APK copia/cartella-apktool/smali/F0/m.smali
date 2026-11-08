.class public abstract LF0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm0/t;

.field public final b:Lz4/H;

.field public final c:J

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:LF0/j;


# direct methods
.method public constructor <init>(Lm0/t;Lz4/H;LF0/s;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, LF0/m;->a:Lm0/t;

    .line 14
    .line 15
    invoke-static {p2}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, LF0/m;->b:Lz4/H;

    .line 20
    .line 21
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, LF0/m;->d:Ljava/util/List;

    .line 26
    .line 27
    iput-object p5, p0, LF0/m;->e:Ljava/util/List;

    .line 28
    .line 29
    iput-object p6, p0, LF0/m;->f:Ljava/util/List;

    .line 30
    .line 31
    invoke-virtual {p3, p0}, LF0/s;->a(LF0/m;)LF0/j;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, LF0/m;->g:LF0/j;

    .line 36
    .line 37
    sget-object p1, Lp0/M;->a:Ljava/lang/String;

    .line 38
    .line 39
    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 40
    .line 41
    iget-wide v0, p3, LF0/s;->c:J

    .line 42
    .line 43
    const-wide/32 v2, 0xf4240

    .line 44
    .line 45
    .line 46
    iget-wide v4, p3, LF0/s;->b:J

    .line 47
    .line 48
    invoke-static/range {v0 .. v6}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 49
    .line 50
    .line 51
    move-result-wide p1

    .line 52
    iput-wide p1, p0, LF0/m;->c:J

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public abstract k()Ljava/lang/String;
.end method

.method public abstract l()LE0/k;
.end method

.method public abstract m()LF0/j;
.end method
