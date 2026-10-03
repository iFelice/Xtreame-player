.class public final Lcom/google/android/gms/internal/ads/eK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:F

.field public j:F

.field public k:F

.field public l:J

.field public m:J

.field public n:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eK;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/eK;->b:J

    .line 7
    .line 8
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eK;->c:J

    .line 14
    .line 15
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eK;->d:J

    .line 16
    .line 17
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eK;->f:J

    .line 18
    .line 19
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eK;->g:J

    .line 20
    .line 21
    const p3, 0x3f7851ec    # 0.97f

    .line 22
    .line 23
    .line 24
    iput p3, p0, Lcom/google/android/gms/internal/ads/eK;->j:F

    .line 25
    .line 26
    const p3, 0x3f83d70a    # 1.03f

    .line 27
    .line 28
    .line 29
    iput p3, p0, Lcom/google/android/gms/internal/ads/eK;->i:F

    .line 30
    .line 31
    const/high16 p3, 0x3f800000    # 1.0f

    .line 32
    .line 33
    iput p3, p0, Lcom/google/android/gms/internal/ads/eK;->k:F

    .line 34
    .line 35
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eK;->l:J

    .line 36
    .line 37
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eK;->e:J

    .line 38
    .line 39
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eK;->h:J

    .line 40
    .line 41
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eK;->m:J

    .line 42
    .line 43
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eK;->n:J

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eK;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/eK;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eK;->h:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/eK;->g:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/eK;->h:J

    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/eK;->l:J

    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eK;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/eK;->d:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/eK;->f:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    move-wide v0, v4

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/eK;->g:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v4, v0

    goto :goto_0

    :cond_2
    move-wide v4, v2

    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eK;->e:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_4

    return-void

    :cond_4
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/eK;->e:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/eK;->h:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/eK;->m:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/eK;->n:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/eK;->l:J

    return-void
.end method
