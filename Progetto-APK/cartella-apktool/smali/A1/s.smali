.class public final LA1/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Z

.field public c:I

.field public d:J

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:J

.field public k:J

.field public l:Z

.field public final m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA1/s;->m:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 8

    .line 1
    iget-wide v1, p0, LA1/s;->k:J

    .line 2
    .line 3
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v1, v3

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-wide v3, p0, LA1/s;->a:J

    .line 13
    .line 14
    iget-wide v5, p0, LA1/s;->j:J

    .line 15
    .line 16
    cmp-long v0, v3, v5

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean v7, p0, LA1/s;->l:Z

    .line 22
    .line 23
    sub-long/2addr v3, v5

    .line 24
    long-to-int v4, v3

    .line 25
    iget-object v0, p0, LA1/s;->m:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, LW0/L;

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    move v3, v7

    .line 31
    move v5, p1

    .line 32
    invoke-interface/range {v0 .. v6}, LW0/L;->d(JIIILW0/K;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(I)V
    .locals 8

    .line 1
    iget-wide v1, p0, LA1/s;->k:J

    .line 2
    .line 3
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v1, v3

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v3, p0, LA1/s;->l:Z

    .line 14
    .line 15
    iget-wide v4, p0, LA1/s;->a:J

    .line 16
    .line 17
    iget-wide v6, p0, LA1/s;->j:J

    .line 18
    .line 19
    sub-long/2addr v4, v6

    .line 20
    iget-object v0, p0, LA1/s;->m:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/gms/internal/ads/e0;

    .line 23
    .line 24
    long-to-int v4, v4

    .line 25
    const/4 v6, 0x0

    .line 26
    move v5, p1

    .line 27
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
