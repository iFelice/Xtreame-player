.class public final enum Lcom/google/android/gms/internal/ads/zx;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum G:Lcom/google/android/gms/internal/ads/zx;

.field public static final synthetic H:[Lcom/google/android/gms/internal/ads/zx;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    new-instance v4, Lcom/google/android/gms/internal/ads/zx;

    .line 6
    .line 7
    const-string v5, "VIDEO_CONTROLS"

    .line 8
    .line 9
    invoke-direct {v4, v5, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    new-instance v5, Lcom/google/android/gms/internal/ads/zx;

    .line 13
    .line 14
    const-string v6, "CLOSE_AD"

    .line 15
    .line 16
    invoke-direct {v5, v6, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v6, Lcom/google/android/gms/internal/ads/zx;

    .line 20
    .line 21
    const-string v7, "NOT_VISIBLE"

    .line 22
    .line 23
    invoke-direct {v6, v7, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    sput-object v6, Lcom/google/android/gms/internal/ads/zx;->G:Lcom/google/android/gms/internal/ads/zx;

    .line 27
    .line 28
    new-instance v7, Lcom/google/android/gms/internal/ads/zx;

    .line 29
    .line 30
    const-string v8, "OTHER"

    .line 31
    .line 32
    invoke-direct {v7, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    const/4 v8, 0x4

    .line 36
    new-array v8, v8, [Lcom/google/android/gms/internal/ads/zx;

    .line 37
    .line 38
    aput-object v4, v8, v3

    .line 39
    .line 40
    aput-object v5, v8, v2

    .line 41
    .line 42
    aput-object v6, v8, v1

    .line 43
    .line 44
    aput-object v7, v8, v0

    .line 45
    .line 46
    sput-object v8, Lcom/google/android/gms/internal/ads/zx;->H:[Lcom/google/android/gms/internal/ads/zx;

    .line 47
    .line 48
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zx;->H:[Lcom/google/android/gms/internal/ads/zx;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zx;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/ads/zx;

    .line 8
    .line 9
    return-object v0
.end method
