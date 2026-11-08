.class public abstract Lcom/google/android/gms/internal/ads/nA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/lA;

.field public static final b:Lcom/google/android/gms/internal/ads/mA;

.field public static final c:Lcom/google/android/gms/internal/ads/mA;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/lA;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/nA;->a:Lcom/google/android/gms/internal/ads/lA;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/mA;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/mA;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/nA;->b:Lcom/google/android/gms/internal/ads/mA;

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/mA;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/mA;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/android/gms/internal/ads/nA;->c:Lcom/google/android/gms/internal/ads/mA;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(II)Lcom/google/android/gms/internal/ads/nA;
.end method

.method public abstract c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/nA;
.end method

.method public abstract d(ZZ)Lcom/google/android/gms/internal/ads/nA;
.end method

.method public abstract e(ZZ)Lcom/google/android/gms/internal/ads/nA;
.end method
