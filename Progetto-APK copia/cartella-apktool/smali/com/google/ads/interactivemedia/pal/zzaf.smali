.class public final synthetic Lcom/google/ads/interactivemedia/pal/zzaf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/pal/H2;


# static fields
.field public static final synthetic zza:Lcom/google/ads/interactivemedia/pal/zzaf;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/pal/zzaf;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/pal/zzaf;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/pal/zzaf;->zza:Lcom/google/ads/interactivemedia/pal/zzaf;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/pal/T0;

    .line 4
    .line 5
    sget v2, Lcom/google/ads/interactivemedia/pal/NonceLoader;->zza:I

    .line 6
    .line 7
    sget-object v2, Lcom/google/ads/interactivemedia/pal/zzak;->zzc:Lcom/google/ads/interactivemedia/pal/zzak;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/pal/zzak;->zza()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p1, Lcom/google/android/gms/internal/pal/T0;->a:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v4, Lcom/google/ads/interactivemedia/pal/zzak;->zzg:Lcom/google/ads/interactivemedia/pal/zzak;

    .line 16
    .line 17
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/pal/zzak;->zza()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    sget-object v5, Lcom/google/ads/interactivemedia/pal/zzak;->zzh:Lcom/google/ads/interactivemedia/pal/zzak;

    .line 22
    .line 23
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/pal/zzak;->zza()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-boolean v6, p1, Lcom/google/android/gms/internal/pal/T0;->c:Z

    .line 28
    .line 29
    if-eq v1, v6, :cond_0

    .line 30
    .line 31
    const-string v6, "0"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v6, "1"

    .line 35
    .line 36
    :goto_0
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pal/y4;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p1, Lcom/google/android/gms/internal/pal/T0;->b:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/pal/y4;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/pal/y4;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const/4 v7, 0x6

    .line 48
    new-array v7, v7, [Ljava/lang/Object;

    .line 49
    .line 50
    const/4 v8, 0x0

    .line 51
    aput-object v2, v7, v8

    .line 52
    .line 53
    aput-object v3, v7, v1

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    aput-object v4, v7, v1

    .line 57
    .line 58
    aput-object p1, v7, v0

    .line 59
    .line 60
    const/4 p1, 0x4

    .line 61
    aput-object v5, v7, p1

    .line 62
    .line 63
    const/4 p1, 0x5

    .line 64
    aput-object v6, v7, p1

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    invoke-static {v0, v7, p1}, Lcom/google/android/gms/internal/pal/Z2;->b(I[Ljava/lang/Object;Lcom/google/android/gms/internal/pal/R2;)Lcom/google/android/gms/internal/pal/Z2;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1
.end method
