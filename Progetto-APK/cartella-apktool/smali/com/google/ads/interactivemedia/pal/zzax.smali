.class public final Lcom/google/ads/interactivemedia/pal/zzax;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/pal/zzs;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/pal/zzs;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/pal/zzax;->zza:Lcom/google/ads/interactivemedia/pal/zzs;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/pal/zzax;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/String;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p2, "null"

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/pal/R2;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/pal/R2;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/google/ads/interactivemedia/pal/zzaw;->zza:Lcom/google/ads/interactivemedia/pal/zzaw;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/pal/zzaw;->zza()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pal/R2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/google/ads/interactivemedia/pal/zzaw;->zzb:Lcom/google/ads/interactivemedia/pal/zzaw;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/pal/zzaw;->zza()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    add-int/lit8 p1, p1, -0x1

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/pal/R2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lcom/google/ads/interactivemedia/pal/zzaw;->zzc:Lcom/google/ads/interactivemedia/pal/zzaw;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/zzaw;->zza()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzax;->zzb:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/pal/R2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/google/ads/interactivemedia/pal/zzaw;->zzd:Lcom/google/ads/interactivemedia/pal/zzaw;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/zzaw;->zza()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/pal/R2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/google/ads/interactivemedia/pal/zzax;->zza:Lcom/google/ads/interactivemedia/pal/zzs;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/R2;->c()Lcom/google/android/gms/internal/pal/Z2;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const-string v0, "asscs"

    .line 66
    .line 67
    const-string v1, "116"

    .line 68
    .line 69
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/ads/interactivemedia/pal/zzs;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
