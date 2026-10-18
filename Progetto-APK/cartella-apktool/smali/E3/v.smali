.class public final LE3/v;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic G:LE3/d;


# direct methods
.method public constructor <init>(LE3/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, LE3/v;->G:LE3/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, LE3/v;->G:LE3/d;

    .line 2
    .line 3
    iget-object v1, v0, LE3/d;->h:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, v0, LE3/d;->k:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 13
    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    iget-wide v1, v0, LE3/d;->b:J

    .line 17
    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    cmp-long v5, v1, v3

    .line 21
    .line 22
    if-eqz v5, :cond_2

    .line 23
    .line 24
    iget-object v1, v0, LE3/d;->h:Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-static {v1}, LH3/a;->f(Ljava/util/AbstractCollection;)[I

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, v0, LE3/d;->c:LE3/j;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v4, "Must be called from the main thread."

    .line 36
    .line 37
    invoke-static {v4}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, LE3/j;->t()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    invoke-static {}, LE3/j;->q()LE3/p;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance v4, LE3/m;

    .line 52
    .line 53
    invoke-direct {v4, v3, v2}, LE3/m;-><init>(LE3/j;[I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v4}, LE3/j;->u(LE3/r;)V

    .line 57
    .line 58
    .line 59
    move-object v2, v4

    .line 60
    :goto_0
    iput-object v2, v0, LE3/d;->k:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 61
    .line 62
    new-instance v3, LE3/u;

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    invoke-direct {v3, v0, v4}, LE3/u;-><init>(LE3/d;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->M0(LE3/u;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_1
    return-void
.end method
