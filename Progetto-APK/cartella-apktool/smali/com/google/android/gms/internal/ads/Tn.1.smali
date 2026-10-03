.class public final Lcom/google/android/gms/internal/ads/Tn;
.super Ll3/v;
.source "SourceFile"


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/Qn;

.field public final synthetic H:Lcom/google/android/gms/internal/ads/Un;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Un;Lcom/google/android/gms/internal/ads/Qn;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Tn;->G:Lcom/google/android/gms/internal/ads/Qn;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Tn;->H:Lcom/google/android/gms/internal/ads/Un;

    .line 4
    .line 5
    invoke-direct {p0}, Ll3/v;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Ll3/z0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tn;->H:Lcom/google/android/gms/internal/ads/Un;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Un;->a:J

    .line 4
    .line 5
    iget p1, p1, Ll3/z0;->G:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Tn;->G:Lcom/google/android/gms/internal/ads/Qn;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v3, Lcom/google/android/gms/internal/ads/rs;

    .line 13
    .line 14
    const-string v4, "interstitial"

    .line 15
    .line 16
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/rs;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 24
    .line 25
    const-string v0, "onAdFailedToLoad"

    .line 26
    .line 27
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, v3, Lcom/google/android/gms/internal/ads/rs;->J:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Qn;->b(Lcom/google/android/gms/internal/ads/rs;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final d(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tn;->H:Lcom/google/android/gms/internal/ads/Un;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Un;->a:J

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Tn;->G:Lcom/google/android/gms/internal/ads/Qn;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/google/android/gms/internal/ads/rs;

    .line 11
    .line 12
    const-string v4, "interstitial"

    .line 13
    .line 14
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/rs;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 22
    .line 23
    const-string v0, "onAdFailedToLoad"

    .line 24
    .line 25
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, v3, Lcom/google/android/gms/internal/ads/rs;->J:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Qn;->b(Lcom/google/android/gms/internal/ads/rs;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final zzc()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tn;->H:Lcom/google/android/gms/internal/ads/Un;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Un;->a:J

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Tn;->G:Lcom/google/android/gms/internal/ads/Qn;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/google/android/gms/internal/ads/rs;

    .line 11
    .line 12
    const-string v4, "interstitial"

    .line 13
    .line 14
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/rs;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 22
    .line 23
    const-string v0, "onAdClicked"

    .line 24
    .line 25
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/rs;->d(Lcom/google/android/gms/internal/ads/rs;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/Qn;->a:Lcom/google/android/gms/internal/ads/Z9;

    .line 32
    .line 33
    check-cast v1, Lcom/google/android/gms/internal/ads/Y9;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final zzd()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tn;->H:Lcom/google/android/gms/internal/ads/Un;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Un;->a:J

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Tn;->G:Lcom/google/android/gms/internal/ads/Qn;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/google/android/gms/internal/ads/rs;

    .line 11
    .line 12
    const-string v4, "interstitial"

    .line 13
    .line 14
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/rs;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 22
    .line 23
    const-string v0, "onAdClosed"

    .line 24
    .line 25
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Qn;->b(Lcom/google/android/gms/internal/ads/rs;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final zzg()V
    .locals 0

    return-void
.end method

.method public final zzh()V
    .locals 0

    return-void
.end method

.method public final zzi()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tn;->H:Lcom/google/android/gms/internal/ads/Un;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Un;->a:J

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Tn;->G:Lcom/google/android/gms/internal/ads/Qn;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/google/android/gms/internal/ads/rs;

    .line 11
    .line 12
    const-string v4, "interstitial"

    .line 13
    .line 14
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/rs;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 22
    .line 23
    const-string v0, "onAdLoaded"

    .line 24
    .line 25
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Qn;->b(Lcom/google/android/gms/internal/ads/rs;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final zzj()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tn;->H:Lcom/google/android/gms/internal/ads/Un;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Un;->a:J

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Tn;->G:Lcom/google/android/gms/internal/ads/Qn;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/google/android/gms/internal/ads/rs;

    .line 11
    .line 12
    const-string v4, "interstitial"

    .line 13
    .line 14
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/rs;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 22
    .line 23
    const-string v0, "onAdOpened"

    .line 24
    .line 25
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Qn;->b(Lcom/google/android/gms/internal/ads/rs;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final zzk()V
    .locals 0

    return-void
.end method
