.class final Lcom/google/ads/interactivemedia/v3/internal/zznk;
.super Lcom/google/ads/interactivemedia/v3/internal/zzmw;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lg4/i;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zznm;Lg4/i;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zza:Lg4/i;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzmw;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zzb(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzng;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzng;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zza:Lg4/i;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lg4/i;->c(Ljava/lang/Exception;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzc(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zza:Lg4/i;

    .line 2
    .line 3
    const-string v1, "newToken"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lg4/i;->d(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
