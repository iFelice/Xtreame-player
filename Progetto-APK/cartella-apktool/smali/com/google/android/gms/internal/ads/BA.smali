.class public final enum Lcom/google/android/gms/internal/ads/BA;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field public static final enum G:Lcom/google/android/gms/internal/ads/BA;

.field public static final synthetic H:[Lcom/google/android/gms/internal/ads/BA;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/BA;

    .line 3
    .line 4
    const-string v2, "INSTANCE"

    .line 5
    .line 6
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v1, Lcom/google/android/gms/internal/ads/BA;->G:Lcom/google/android/gms/internal/ads/BA;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Lcom/google/android/gms/internal/ads/BA;

    .line 13
    .line 14
    aput-object v1, v2, v0

    .line 15
    .line 16
    sput-object v2, Lcom/google/android/gms/internal/ads/BA;->H:[Lcom/google/android/gms/internal/ads/BA;

    .line 17
    .line 18
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/BA;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/BA;->H:[Lcom/google/android/gms/internal/ads/BA;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/BA;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/ads/BA;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "no calls to next() since the last call to remove()"

    .line 3
    .line 4
    invoke-static {v1, v0}, Lf/b;->E0(Ljava/lang/String;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
