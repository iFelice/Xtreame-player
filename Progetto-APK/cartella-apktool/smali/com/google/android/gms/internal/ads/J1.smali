.class public final Lcom/google/android/gms/internal/ads/J1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/O1;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/Q;

.field public final H:Lcom/google/android/gms/internal/ads/x;

.field public I:J

.field public J:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Q;Lcom/google/android/gms/internal/ads/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/J1;->G:Lcom/google/android/gms/internal/ads/Q;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/J1;->H:Lcom/google/android/gms/internal/ads/x;

    .line 7
    .line 8
    const-wide/16 p1, -0x1

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/J1;->I:J

    .line 11
    .line 12
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/J1;->J:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/M;)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/J1;->J:J

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/J1;->J:J

    neg-long v0, v0

    return-wide v0

    :cond_0
    return-wide v4
.end method

.method public final b(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/J1;->H:Lcom/google/android/gms/internal/ads/x;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, [J

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/Et;->k([JJZ)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    aget-wide p1, v0, p1

    .line 13
    .line 14
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/J1;->J:J

    .line 15
    .line 16
    return-void
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/Y;
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/J1;->I:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    cmp-long v5, v0, v2

    .line 7
    .line 8
    if-eqz v5, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lo3/r;->M(Z)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/P;

    .line 17
    .line 18
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/J1;->I:J

    .line 19
    .line 20
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/J1;->G:Lcom/google/android/gms/internal/ads/Q;

    .line 21
    .line 22
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/P;-><init>(Ljava/lang/Object;IJ)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method
