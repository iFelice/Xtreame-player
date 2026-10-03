.class public final Lw0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Landroid/media/MediaCodec$CryptoInfo;

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x18

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance p1, Landroid/media/MediaCodec$CryptoInfo;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lw0/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 16
    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    if-lt v0, v2, :cond_0

    .line 20
    .line 21
    new-instance v1, Lw0/b;

    .line 22
    .line 23
    invoke-direct {v1, p1}, Lw0/b;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iput-object v1, p0, Lw0/c;->j:Ljava/lang/Object;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroid/media/MediaCodec$CryptoInfo;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lw0/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 38
    .line 39
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 40
    .line 41
    if-lt v0, v2, :cond_2

    .line 42
    .line 43
    new-instance v1, Lcom/google/android/gms/internal/ads/SJ;

    .line 44
    .line 45
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/SJ;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iput-object v1, p0, Lw0/c;->j:Ljava/lang/Object;

    .line 49
    .line 50
    return-void
.end method
