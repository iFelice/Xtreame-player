.class public final synthetic Lcom/google/ads/interactivemedia/pal/zzac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/pal/H2;


# static fields
.field public static final synthetic zza:Lcom/google/ads/interactivemedia/pal/zzac;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/pal/zzac;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/pal/zzac;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/pal/zzac;->zza:Lcom/google/ads/interactivemedia/pal/zzac;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    check-cast p1, LA3/b;

    .line 3
    .line 4
    sget v1, Lcom/google/ads/interactivemedia/pal/NonceLoader;->zza:I

    .line 5
    .line 6
    sget-object v1, Lcom/google/ads/interactivemedia/pal/zzak;->zzo:Lcom/google/ads/interactivemedia/pal/zzak;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/pal/zzak;->zza()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p1, LA3/b;->a:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v3, Lcom/google/ads/interactivemedia/pal/zzak;->zzp:Lcom/google/ads/interactivemedia/pal/zzak;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/pal/zzak;->zza()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget p1, p1, LA3/b;->b:I

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pal/y4;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/pal/y4;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    new-array v4, v4, [Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    aput-object v1, v4, v5

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    aput-object v2, v4, v1

    .line 40
    .line 41
    aput-object v3, v4, v0

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    aput-object p1, v4, v1

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-static {v0, v4, p1}, Lcom/google/android/gms/internal/pal/Z2;->b(I[Ljava/lang/Object;Lcom/google/android/gms/internal/pal/R2;)Lcom/google/android/gms/internal/pal/Z2;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method
