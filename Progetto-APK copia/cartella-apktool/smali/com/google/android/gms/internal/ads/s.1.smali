.class public final Lcom/google/android/gms/internal/ads/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/n;

.field public final b:LU0/C;

.field public final c:Lcom/google/android/gms/internal/ads/Ks;

.field public final d:Lcom/google/android/gms/internal/ads/Ks;

.field public final e:Lcom/google/android/gms/internal/ads/CO;

.field public f:Lcom/google/android/gms/internal/ads/th;

.field public g:Lcom/google/android/gms/internal/ads/th;

.field public h:J

.field public i:J

.field public final j:Lcom/google/android/gms/internal/ads/MN;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/MN;Lcom/google/android/gms/internal/ads/n;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s;->j:Lcom/google/android/gms/internal/ads/MN;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s;->a:Lcom/google/android/gms/internal/ads/n;

    .line 7
    .line 8
    new-instance p1, LU0/C;

    .line 9
    .line 10
    invoke-direct {p1}, LU0/C;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s;->b:LU0/C;

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/Ks;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Ks;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s;->c:Lcom/google/android/gms/internal/ads/Ks;

    .line 21
    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/Ks;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Ks;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s;->d:Lcom/google/android/gms/internal/ads/Ks;

    .line 28
    .line 29
    new-instance p1, Lcom/google/android/gms/internal/ads/CO;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    const/16 p2, 0x10

    .line 35
    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-eq v0, v1, :cond_0

    .line 42
    .line 43
    const/16 p2, 0xf

    .line 44
    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    add-int/2addr p2, p2

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    iput v0, p1, Lcom/google/android/gms/internal/ads/CO;->a:I

    .line 52
    .line 53
    iput v0, p1, Lcom/google/android/gms/internal/ads/CO;->b:I

    .line 54
    .line 55
    new-array v0, p2, [J

    .line 56
    .line 57
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 58
    .line 59
    add-int/lit8 p2, p2, -0x1

    .line 60
    .line 61
    iput p2, p1, Lcom/google/android/gms/internal/ads/CO;->c:I

    .line 62
    .line 63
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s;->e:Lcom/google/android/gms/internal/ads/CO;

    .line 64
    .line 65
    sget-object p1, Lcom/google/android/gms/internal/ads/th;->d:Lcom/google/android/gms/internal/ads/th;

    .line 66
    .line 67
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s;->g:Lcom/google/android/gms/internal/ads/th;

    .line 68
    .line 69
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/s;->i:J

    .line 75
    .line 76
    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/ads/Ks;)Ljava/lang/Object;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/Ks;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Lo3/r;->J(Z)V

    .line 12
    .line 13
    .line 14
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ks;->a()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-le v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ks;->b()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ks;->b()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p0

    .line 34
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s;->e:Lcom/google/android/gms/internal/ads/CO;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/google/android/gms/internal/ads/CO;->a:I

    .line 5
    .line 6
    iput v1, v0, Lcom/google/android/gms/internal/ads/CO;->b:I

    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/s;->i:J

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s;->d:Lcom/google/android/gms/internal/ads/Ks;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/Ks;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/s;->b(Lcom/google/android/gms/internal/ads/Ks;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Long;

    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Ks;->d(Ljava/lang/Object;J)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s;->f:Lcom/google/android/gms/internal/ads/th;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/s;->c:Lcom/google/android/gms/internal/ads/Ks;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ks;->a()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-lez v0, :cond_1

    .line 45
    .line 46
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/s;->b(Lcom/google/android/gms/internal/ads/Ks;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/google/android/gms/internal/ads/th;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/s;->f:Lcom/google/android/gms/internal/ads/th;

    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ks;->e()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0

    .line 61
    throw v1
.end method
