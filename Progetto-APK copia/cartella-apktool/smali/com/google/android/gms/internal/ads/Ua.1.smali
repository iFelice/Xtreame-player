.class public final synthetic Lcom/google/android/gms/internal/ads/Ua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ve;
.implements Lcom/google/android/gms/internal/ads/ue;
.implements Lcom/google/android/gms/internal/ads/dC;


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/te;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/te;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ua;->G:Lcom/google/android/gms/internal/ads/te;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/te;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ua;->G:Lcom/google/android/gms/internal/ads/te;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    new-instance v0, LD0/t;

    .line 2
    const-string v1, "Cannot get Javascript Engine"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ua;->G:Lcom/google/android/gms/internal/ads/te;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/te;->c(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zza(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ua;->G:Lcom/google/android/gms/internal/ads/te;

    check-cast p1, Lcom/google/android/gms/internal/ads/La;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/te;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    const-string v0, "Failed to load media data due to video view load failure."

    invoke-static {v0}, Lp3/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ua;->G:Lcom/google/android/gms/internal/ads/te;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/te;->c(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/E9;

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/gz;

    .line 8
    .line 9
    const/16 v2, 0x9

    .line 10
    .line 11
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/gz;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x6

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/E9;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    const-string v1, "/video"

    .line 19
    .line 20
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Ef;->L0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->P()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/qr;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    const-string v1, "Missing webview from video view future."

    .line 31
    .line 32
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ua;->G:Lcom/google/android/gms/internal/ads/te;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/te;->c(Ljava/lang/Throwable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method
