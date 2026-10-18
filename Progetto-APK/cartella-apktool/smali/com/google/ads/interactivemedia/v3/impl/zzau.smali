.class public final enum Lcom/google/ads/interactivemedia/v3/impl/zzau;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/ads/interactivemedia/v3/impl/zzau;

.field private static final synthetic zzb:[Lcom/google/ads/interactivemedia/v3/impl/zzau;


# instance fields
.field private final zzc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzau;

    .line 2
    .line 3
    const-string v1, "GTV"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "requester_type_10"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzau;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/zzau;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzau;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Lcom/google/ads/interactivemedia/v3/impl/zzau;

    .line 15
    .line 16
    aput-object v0, v1, v2

    .line 17
    .line 18
    sput-object v1, Lcom/google/ads/interactivemedia/v3/impl/zzau;->zzb:[Lcom/google/ads/interactivemedia/v3/impl/zzau;

    .line 19
    .line 20
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "GTV"

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    const-string p1, "requester_type_10"

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzau;->zzc:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/impl/zzau;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/zzau;->zzb:[Lcom/google/ads/interactivemedia/v3/impl/zzau;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/impl/zzau;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/ads/interactivemedia/v3/impl/zzau;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzau;->zzc:Ljava/lang/String;

    return-object v0
.end method
