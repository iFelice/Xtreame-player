.class public final synthetic Lcom/google/android/gms/internal/ads/Rw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Dw;
.implements Lcom/google/android/gms/internal/ads/dC;


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/Ow;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Ow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Rw;->G:Lcom/google/android/gms/internal/ads/Ow;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/m8;->c:Lcom/google/android/gms/internal/ads/f8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Rw;->G:Lcom/google/android/gms/internal/ads/Ow;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ow;->zzi()Lcom/google/android/gms/internal/ads/Ow;

    :cond_0
    return-object p1
.end method

.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Rw;->G:Lcom/google/android/gms/internal/ads/Ow;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ow;->zzi()Lcom/google/android/gms/internal/ads/Ow;

    .line 4
    .line 5
    .line 6
    return-void
.end method
