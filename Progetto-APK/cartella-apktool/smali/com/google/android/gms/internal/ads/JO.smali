.class public final Lcom/google/android/gms/internal/ads/JO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LS0/g;

.field public static final f:LS0/g;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lcom/google/android/gms/internal/ads/Zn;

.field public c:Lcom/google/android/gms/internal/ads/GO;

.field public d:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LS0/g;

    const/4 v1, 0x2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, LS0/g;-><init>(IJI)V

    sput-object v0, Lcom/google/android/gms/internal/ads/JO;->e:LS0/g;

    new-instance v0, LS0/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, LS0/g;-><init>(IJI)V

    sput-object v0, Lcom/google/android/gms/internal/ads/JO;->f:LS0/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/tt;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/tt;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/JO;->a:Ljava/util/concurrent/ExecutorService;

    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/google/android/gms/internal/ads/Zn;

    .line 20
    .line 21
    const/16 v2, 0x18

    .line 22
    .line 23
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/JO;->b:Lcom/google/android/gms/internal/ads/Zn;

    .line 27
    .line 28
    return-void
.end method
