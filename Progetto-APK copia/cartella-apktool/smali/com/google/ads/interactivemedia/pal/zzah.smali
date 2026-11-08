.class public final synthetic Lcom/google/ads/interactivemedia/pal/zzah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/pal/H2;


# static fields
.field public static final synthetic zza:Lcom/google/ads/interactivemedia/pal/zzah;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/pal/zzah;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/pal/zzah;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/pal/zzah;->zza:Lcom/google/ads/interactivemedia/pal/zzah;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    check-cast p1, Ljava/lang/String;

    .line 3
    .line 4
    sget v1, Lcom/google/ads/interactivemedia/pal/NonceLoader;->zza:I

    .line 5
    .line 6
    sget-object v1, Lcom/google/ads/interactivemedia/pal/zzak;->zzb:Lcom/google/ads/interactivemedia/pal/zzak;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/pal/zzak;->zza()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/pal/y4;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aput-object v1, v2, v3

    .line 20
    .line 21
    aput-object p1, v2, v0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/pal/Z2;->b(I[Ljava/lang/Object;Lcom/google/android/gms/internal/pal/R2;)Lcom/google/android/gms/internal/pal/Z2;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method
