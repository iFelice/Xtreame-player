.class public final enum Lcom/google/android/gms/internal/atv_ads_framework/V0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum H:Lcom/google/android/gms/internal/atv_ads_framework/V0;

.field public static final enum I:Lcom/google/android/gms/internal/atv_ads_framework/V0;

.field public static final enum J:Lcom/google/android/gms/internal/atv_ads_framework/V0;

.field public static final synthetic K:[Lcom/google/android/gms/internal/atv_ads_framework/V0;


# instance fields
.field public final G:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/atv_ads_framework/V0;

    .line 2
    .line 3
    const-string v1, "SIGNAL_COLLECTION_ERROR_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/atv_ads_framework/V0;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/atv_ads_framework/V0;

    .line 10
    .line 11
    const-string v3, "SIGNAL_COLLECTION_ERROR_RUNTIME_EXCEPTION"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/atv_ads_framework/V0;-><init>(Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/google/android/gms/internal/atv_ads_framework/V0;

    .line 18
    .line 19
    const-string v5, "SIGNAL_COLLECTION_ERROR_NAME_NOT_FOUND"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/atv_ads_framework/V0;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    sput-object v3, Lcom/google/android/gms/internal/atv_ads_framework/V0;->H:Lcom/google/android/gms/internal/atv_ads_framework/V0;

    .line 26
    .line 27
    new-instance v5, Lcom/google/android/gms/internal/atv_ads_framework/V0;

    .line 28
    .line 29
    const-string v7, "SIGNAL_COLLECTION_ERROR_BUILD_FINGERPRINT_PREFIX"

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/atv_ads_framework/V0;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v5, Lcom/google/android/gms/internal/atv_ads_framework/V0;->I:Lcom/google/android/gms/internal/atv_ads_framework/V0;

    .line 36
    .line 37
    new-instance v7, Lcom/google/android/gms/internal/atv_ads_framework/V0;

    .line 38
    .line 39
    const-string v9, "SIGNAL_COLLECTION_ERROR_NULL_CONTENT_PROVIDER_DATA"

    .line 40
    .line 41
    const/4 v10, 0x4

    .line 42
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/atv_ads_framework/V0;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    sput-object v7, Lcom/google/android/gms/internal/atv_ads_framework/V0;->J:Lcom/google/android/gms/internal/atv_ads_framework/V0;

    .line 46
    .line 47
    const/4 v9, 0x5

    .line 48
    new-array v9, v9, [Lcom/google/android/gms/internal/atv_ads_framework/V0;

    .line 49
    .line 50
    aput-object v0, v9, v2

    .line 51
    .line 52
    aput-object v1, v9, v4

    .line 53
    .line 54
    aput-object v3, v9, v6

    .line 55
    .line 56
    aput-object v5, v9, v8

    .line 57
    .line 58
    aput-object v7, v9, v10

    .line 59
    .line 60
    sput-object v9, Lcom/google/android/gms/internal/atv_ads_framework/V0;->K:[Lcom/google/android/gms/internal/atv_ads_framework/V0;

    .line 61
    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/atv_ads_framework/V0;->G:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/atv_ads_framework/V0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/atv_ads_framework/V0;->K:[Lcom/google/android/gms/internal/atv_ads_framework/V0;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/atv_ads_framework/V0;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/atv_ads_framework/V0;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/V0;->G:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
