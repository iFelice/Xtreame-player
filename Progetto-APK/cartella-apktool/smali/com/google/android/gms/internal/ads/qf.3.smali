.class public final Lcom/google/android/gms/internal/ads/qf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/DK;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/CO;

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/CO;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/CO;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->a:Lcom/google/android/gms/internal/ads/CO;

    const-wide/32 v0, 0xe4e1c0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:J

    const-wide/32 v0, 0x1c9c380

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/qf;->c:J

    const-wide/32 v0, 0x2625a0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/qf;->d:J

    const-wide/32 v0, 0x4c4b40

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/qf;->e:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zL;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/qf;->f:I

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/qf;->g:Z

    .line 5
    .line 6
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zL;[Lcom/google/android/gms/internal/ads/aK;[Lcom/google/android/gms/internal/ads/uO;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/qf;->f:I

    .line 3
    .line 4
    :goto_0
    array-length v0, p2

    .line 5
    const/4 v0, 0x2

    .line 6
    if-ge p1, v0, :cond_2

    .line 7
    .line 8
    aget-object v0, p3, p1

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/qf;->f:I

    .line 13
    .line 14
    aget-object v1, p2, p1

    .line 15
    .line 16
    iget v1, v1, Lcom/google/android/gms/internal/ads/aK;->b:I

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq v1, v2, :cond_0

    .line 20
    .line 21
    const/high16 v1, 0x7d00000

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/high16 v1, 0xc80000

    .line 25
    .line 26
    :goto_1
    add-int/2addr v0, v1

    .line 27
    iput v0, p0, Lcom/google/android/gms/internal/ads/qf;->f:I

    .line 28
    .line 29
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qf;->a:Lcom/google/android/gms/internal/ads/CO;

    .line 33
    .line 34
    iget p2, p0, Lcom/google/android/gms/internal/ads/qf;->f:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/CO;->M(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/CK;)Z
    .locals 5

    .line 1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/CK;->d:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/qf;->e:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/qf;->d:J

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/CK;->b:J

    cmp-long p1, v2, v0

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zL;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/qf;->f:I

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/qf;->g:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->a:Lcom/google/android/gms/internal/ads/CO;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/CO;->M(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0

    .line 16
    throw p1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zL;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/qf;->f:I

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/qf;->g:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->a:Lcom/google/android/gms/internal/ads/CO;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/CO;->M(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0

    .line 16
    throw p1
.end method

.method public final f(Lcom/google/android/gms/internal/ads/CK;)Z
    .locals 7

    .line 1
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/CK;->b:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/qf;->c:J

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x0

    .line 8
    cmp-long v6, v0, v2

    .line 9
    .line 10
    if-lez v6, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/qf;->b:J

    .line 15
    .line 16
    cmp-long v6, v0, v2

    .line 17
    .line 18
    if-gez v6, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x1

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qf;->a:Lcom/google/android/gms/internal/ads/CO;

    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget v2, v1, Lcom/google/android/gms/internal/ads/CO;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    const/high16 v3, 0x10000

    .line 29
    .line 30
    mul-int v2, v2, v3

    .line 31
    .line 32
    monitor-exit v1

    .line 33
    iget v1, p0, Lcom/google/android/gms/internal/ads/qf;->f:I

    .line 34
    .line 35
    if-eq v0, p1, :cond_3

    .line 36
    .line 37
    if-ne v0, v4, :cond_2

    .line 38
    .line 39
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/qf;->g:Z

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    if-ge v2, v1, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 v4, 0x0

    .line 47
    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/qf;->g:Z

    .line 48
    .line 49
    return v4

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    monitor-exit v1

    .line 52
    throw p1
.end method

.method public final zzb()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzj()Lcom/google/android/gms/internal/ads/CO;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->a:Lcom/google/android/gms/internal/ads/CO;

    return-object v0
.end method
