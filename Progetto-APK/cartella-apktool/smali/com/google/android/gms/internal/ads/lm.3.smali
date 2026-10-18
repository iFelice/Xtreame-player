.class public final synthetic Lcom/google/android/gms/internal/ads/lm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vz;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/mm;

.field public final synthetic b:D

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/mm;DZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lm;->a:Lcom/google/android/gms/internal/ads/mm;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/lm;->b:D

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/lm;->c:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/u3;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lm;->a:Lcom/google/android/gms/internal/ads/mm;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/u3;->b:[B

    .line 9
    .line 10
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 13
    .line 14
    .line 15
    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    .line 16
    .line 17
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/lm;->b:D

    .line 18
    .line 19
    mul-double v4, v4, v2

    .line 20
    .line 21
    double-to-int v2, v4

    .line 22
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/lm;->c:Z

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 29
    .line 30
    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 31
    .line 32
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->G5:Lcom/google/android/gms/internal/ads/J7;

    .line 33
    .line 34
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 35
    .line 36
    iget-object v4, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 37
    .line 38
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 52
    .line 53
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/mm;->a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 54
    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 58
    .line 59
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 60
    .line 61
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 62
    .line 63
    mul-int v4, v4, v5

    .line 64
    .line 65
    if-lez v4, :cond_1

    .line 66
    .line 67
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->H5:Lcom/google/android/gms/internal/ads/J7;

    .line 68
    .line 69
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 70
    .line 71
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    add-int/lit8 v4, v4, -0x1

    .line 82
    .line 83
    div-int/2addr v4, v3

    .line 84
    invoke-static {v4}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    rsub-int/lit8 v3, v3, 0x21

    .line 89
    .line 90
    div-int/lit8 v3, v3, 0x2

    .line 91
    .line 92
    shl-int/2addr v2, v3

    .line 93
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 94
    .line 95
    :cond_1
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/mm;->a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1
.end method
