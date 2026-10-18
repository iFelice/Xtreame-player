.class public final synthetic Lcom/google/ads/interactivemedia/pal/zzae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/b;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/pal/R2;

.field public final synthetic zzb:Lg4/h;

.field public final synthetic zzc:Lg4/h;

.field public final synthetic zzd:Lg4/h;

.field public final synthetic zze:Lg4/h;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/pal/R2;Lg4/h;Lg4/h;Lg4/h;Lg4/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/interactivemedia/pal/zzae;->zza:Lcom/google/android/gms/internal/pal/R2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/ads/interactivemedia/pal/zzae;->zzb:Lg4/h;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/ads/interactivemedia/pal/zzae;->zzc:Lg4/h;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/ads/interactivemedia/pal/zzae;->zzd:Lg4/h;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/ads/interactivemedia/pal/zzae;->zze:Lg4/h;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final then(Lg4/h;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzae;->zza:Lcom/google/android/gms/internal/pal/R2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzae;->zzb:Lg4/h;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/ads/interactivemedia/pal/zzae;->zzc:Lg4/h;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzae;->zzd:Lg4/h;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/ads/interactivemedia/pal/zzae;->zze:Lg4/h;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/pal/NonceLoader;->zzb(Lcom/google/android/gms/internal/pal/R2;Lg4/h;Lg4/h;Lg4/h;Lg4/h;Lg4/h;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
