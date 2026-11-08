.class public abstract Lcom/google/android/gms/internal/ads/YC;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zE;

.field public static final b:Lcom/google/android/gms/internal/ads/cE;

.field public static final c:Lcom/google/android/gms/internal/ads/jE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Dz;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Dz;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zE;

    .line 8
    .line 9
    const-class v2, Lcom/google/android/gms/internal/ads/XC;

    .line 10
    .line 11
    const-class v3, Lcom/google/android/gms/internal/ads/vC;

    .line 12
    .line 13
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zE;-><init>(Lcom/google/android/gms/internal/ads/AE;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lcom/google/android/gms/internal/ads/YC;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 17
    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/CF;->F()Lcom/google/android/gms/internal/ads/SH;

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/cE;

    .line 22
    .line 23
    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/cE;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/YC;->b:Lcom/google/android/gms/internal/ads/cE;

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/jE;

    .line 32
    .line 33
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/jE;-><init>(I)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/google/android/gms/internal/ads/YC;->c:Lcom/google/android/gms/internal/ads/jE;

    .line 37
    .line 38
    return-void
.end method
