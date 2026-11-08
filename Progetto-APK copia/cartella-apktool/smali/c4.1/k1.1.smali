.class public final Lc4/k1;
.super Lc4/B;
.source "SourceFile"


# instance fields
.field public I:LE1/W;

.field public J:Z

.field public final K:LZ3/o;

.field public final L:Lcom/google/android/gms/internal/ads/PN;

.field public final M:Lm2/e;


# direct methods
.method public constructor <init>(Lc4/l0;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lc4/B;-><init>(Lc4/l0;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lc4/k1;->J:Z

    .line 6
    .line 7
    new-instance p1, LZ3/o;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    invoke-direct {p1, p0, v0}, LZ3/o;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lc4/k1;->K:LZ3/o;

    .line 15
    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/PN;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p0, p1, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance v0, Lc4/j1;

    .line 24
    .line 25
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lc4/l0;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v0, p1, v1, v2}, Lc4/j1;-><init>(Ljava/lang/Object;Lc4/l0;I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lc4/l0;

    .line 38
    .line 39
    iget-object v0, v0, Lc4/l0;->T:LP3/b;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/PN;->a:J

    .line 49
    .line 50
    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 51
    .line 52
    iput-object p1, p0, Lc4/k1;->L:Lcom/google/android/gms/internal/ads/PN;

    .line 53
    .line 54
    new-instance p1, Lm2/e;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Lm2/e;-><init>(Lc4/k1;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lc4/k1;->M:Lm2/e;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final q()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc4/k1;->I:LE1/W;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, LE1/W;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-direct {v0, v1, v2}, LE1/W;-><init>(Landroid/os/Looper;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lc4/k1;->I:LE1/W;

    .line 19
    .line 20
    :cond_0
    return-void
.end method
