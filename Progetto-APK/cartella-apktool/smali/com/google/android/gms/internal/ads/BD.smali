.class public abstract Lcom/google/android/gms/internal/ads/BD;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zE;

.field public static final b:Lcom/google/android/gms/internal/ads/cE;

.field public static final c:Lcom/google/android/gms/internal/ads/SC;

.field public static final d:Lcom/google/android/gms/internal/ads/jE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Dz;

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Dz;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zE;

    .line 9
    .line 10
    const-class v2, Lcom/google/android/gms/internal/ads/AD;

    .line 11
    .line 12
    const-class v3, Lcom/google/android/gms/internal/ads/vC;

    .line 13
    .line 14
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zE;-><init>(Lcom/google/android/gms/internal/ads/AE;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/google/android/gms/internal/ads/BD;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/AG;->E()Lcom/google/android/gms/internal/ads/SH;

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/cE;

    .line 23
    .line 24
    const-string v1, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/cE;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/google/android/gms/internal/ads/BD;->b:Lcom/google/android/gms/internal/ads/cE;

    .line 31
    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/SC;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/google/android/gms/internal/ads/BD;->c:Lcom/google/android/gms/internal/ads/SC;

    .line 38
    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/jE;

    .line 40
    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/jE;-><init>(I)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/google/android/gms/internal/ads/BD;->d:Lcom/google/android/gms/internal/ads/jE;

    .line 47
    .line 48
    return-void
.end method
