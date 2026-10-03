.class public final synthetic Lcom/google/ads/interactivemedia/v3/internal/zznq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/b;


# instance fields
.field public final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzq;

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzq;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzq;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zznq;->zzb:I

    return-void
.end method


# virtual methods
.method public final then(Lg4/h;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lg4/h;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zznq;->zzb:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzq;

    .line 10
    .line 11
    invoke-virtual {p1}, Lg4/h;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzpj;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzv;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzach;->zzav()[B

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpj;->zza([B)Lcom/google/ads/interactivemedia/v3/internal/zzpi;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpi;->zza(I)Lcom/google/ads/interactivemedia/v3/internal/zzpi;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpi;->zzc()V

    .line 35
    .line 36
    .line 37
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    .line 42
    :goto_0
    return-object p1
.end method
