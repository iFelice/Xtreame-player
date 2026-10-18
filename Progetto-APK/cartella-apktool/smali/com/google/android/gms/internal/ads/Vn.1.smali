.class public final Lcom/google/android/gms/internal/ads/Vn;
.super Lcom/google/android/gms/internal/ads/wd;
.source "SourceFile"


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/Xn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Xn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Vn;->G:Lcom/google/android/gms/internal/ads/Xn;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/wd;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ll3/z0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vn;->G:Lcom/google/android/gms/internal/ads/Xn;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Xn;->b:Lcom/google/android/gms/internal/ads/Qn;

    .line 4
    .line 5
    iget p1, p1, Ll3/z0;->G:I

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/google/android/gms/internal/ads/rs;

    .line 11
    .line 12
    const-string v3, "rewarded"

    .line 13
    .line 14
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/rs;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/Xn;->a:J

    .line 18
    .line 19
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 24
    .line 25
    const-string v0, "onRewardedAdFailedToLoad"

    .line 26
    .line 27
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, v2, Lcom/google/android/gms/internal/ads/rs;->J:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Qn;->b(Lcom/google/android/gms/internal/ads/rs;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final d(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vn;->G:Lcom/google/android/gms/internal/ads/Xn;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Xn;->b:Lcom/google/android/gms/internal/ads/Qn;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/rs;

    .line 9
    .line 10
    const-string v3, "rewarded"

    .line 11
    .line 12
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/rs;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/Xn;->a:J

    .line 16
    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 22
    .line 23
    const-string v0, "onRewardedAdFailedToLoad"

    .line 24
    .line 25
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, v2, Lcom/google/android/gms/internal/ads/rs;->J:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Qn;->b(Lcom/google/android/gms/internal/ads/rs;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final zzg()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vn;->G:Lcom/google/android/gms/internal/ads/Xn;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Xn;->b:Lcom/google/android/gms/internal/ads/Qn;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/rs;

    .line 9
    .line 10
    const-string v3, "rewarded"

    .line 11
    .line 12
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/rs;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/Xn;->a:J

    .line 16
    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 22
    .line 23
    const-string v0, "onRewardedAdLoaded"

    .line 24
    .line 25
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Qn;->b(Lcom/google/android/gms/internal/ads/rs;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
