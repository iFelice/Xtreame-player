.class public final LF2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lw2/k;

.field public static final g:Lw2/k;

.field public static final h:Lw2/k;

.field public static final i:Lw2/k;

.field public static final j:Ljava/util/Set;

.field public static final k:LU1/f;

.field public static final l:Ljava/util/ArrayDeque;


# instance fields
.field public final a:Lz2/d;

.field public final b:Landroid/util/DisplayMetrics;

.field public final c:Lz2/h;

.field public final d:Ljava/util/List;

.field public final e:LF2/v;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lw2/b;->I:Lw2/b;

    .line 2
    .line 3
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lw2/k;->a(Ljava/lang/Object;Ljava/lang/String;)Lw2/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, LF2/p;->f:Lw2/k;

    .line 10
    .line 11
    new-instance v0, Lw2/k;

    .line 12
    .line 13
    sget-object v1, Lw2/k;->e:LU4/b;

    .line 14
    .line 15
    const-string v2, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v0, v2, v3, v1}, Lw2/k;-><init>(Ljava/lang/String;Ljava/lang/Object;Lw2/j;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, LF2/p;->g:Lw2/k;

    .line 22
    .line 23
    sget-object v0, LF2/n;->a:LF2/m;

    .line 24
    .line 25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lw2/k;->a(Ljava/lang/Object;Ljava/lang/String;)Lw2/k;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, LF2/p;->h:Lw2/k;

    .line 34
    .line 35
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lw2/k;->a(Ljava/lang/Object;Ljava/lang/String;)Lw2/k;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, LF2/p;->i:Lw2/k;

    .line 42
    .line 43
    new-instance v0, Ljava/util/HashSet;

    .line 44
    .line 45
    const-string v1, "image/vnd.wap.wbmp"

    .line 46
    .line 47
    const-string v2, "image/x-ico"

    .line 48
    .line 49
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, LF2/p;->j:Ljava/util/Set;

    .line 65
    .line 66
    new-instance v0, LU1/f;

    .line 67
    .line 68
    const/16 v1, 0x1b

    .line 69
    .line 70
    invoke-direct {v0, v1, v3}, LU1/f;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sput-object v0, LF2/p;->k:LU1/f;

    .line 74
    .line 75
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 76
    .line 77
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 78
    .line 79
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 80
    .line 81
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    sget-object v0, LP2/o;->a:[C

    .line 89
    .line 90
    new-instance v0, Ljava/util/ArrayDeque;

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 94
    .line 95
    .line 96
    sput-object v0, LF2/p;->l:Ljava/util/ArrayDeque;

    .line 97
    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lz2/d;Lz2/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, LF2/v;->a()LF2/v;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, LF2/p;->e:LF2/v;

    .line 9
    .line 10
    iput-object p1, p0, LF2/p;->d:Ljava/util/List;

    .line 11
    .line 12
    const-string p1, "Argument must not be null"

    .line 13
    .line 14
    invoke-static {p2, p1}, Ln0/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, LF2/p;->b:Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    invoke-static {p3, p1}, Ln0/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p3, p0, LF2/p;->a:Lz2/d;

    .line 23
    .line 24
    invoke-static {p4, p1}, Ln0/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p4, p0, LF2/p;->c:Lz2/h;

    .line 28
    .line 29
    return-void
.end method

.method public static c(Lm2/u;Landroid/graphics/BitmapFactory$Options;LF2/o;Lz2/d;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    const-string v0, "Downsampler"

    .line 2
    .line 3
    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, LF2/o;->d()V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lm2/u;->G:I

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_0
    iget-object v1, p0, Lm2/u;->H:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lcom/bumptech/glide/load/data/n;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/bumptech/glide/load/data/n;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, LF2/w;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v2, v1, LF2/w;->G:[B

    .line 26
    .line 27
    array-length v2, v2

    .line 28
    iput v2, v1, LF2/w;->I:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    monitor-exit v1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v1

    .line 34
    throw p0

    .line 35
    :cond_0
    :goto_0
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 36
    .line 37
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 38
    .line 39
    iget-object v3, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 40
    .line 41
    sget-object v4, LF2/y;->b:Ljava/util/concurrent/locks/Lock;

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 44
    .line 45
    .line 46
    :try_start_1
    invoke-virtual {p0, p1}, Lm2/u;->l(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 47
    .line 48
    .line 49
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :catch_0
    move-exception v4

    .line 55
    :try_start_2
    invoke-static {v4, v1, v2, v3, p1}, LF2/p;->e(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x3

    .line 60
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    const-string v2, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    .line 67
    .line 68
    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    :goto_1
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    :try_start_3
    invoke-interface {p3, v0}, Lz2/d;->a(Landroid/graphics/Bitmap;)V

    .line 79
    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 83
    .line 84
    invoke-static {p0, p1, p2, p3}, LF2/p;->c(Lm2/u;Landroid/graphics/BitmapFactory$Options;LF2/o;Lz2/d;)Landroid/graphics/Bitmap;

    .line 85
    .line 86
    .line 87
    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    sget-object p1, LF2/y;->b:Ljava/util/concurrent/locks/Lock;

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 91
    .line 92
    .line 93
    return-object p0

    .line 94
    :catch_1
    :try_start_4
    throw v1

    .line 95
    :cond_2
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 96
    :goto_2
    sget-object p1, LF2/y;->b:Ljava/util/concurrent/locks/Lock;

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, " ("

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ")"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "["

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "x"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, "] "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method public static e(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 2
    .line 3
    const-string v1, "Exception decoding bitmap, outWidth: "

    .line 4
    .line 5
    const-string v2, ", outHeight: "

    .line 6
    .line 7
    const-string v3, ", outMimeType: "

    .line 8
    .line 9
    invoke-static {v1, p1, v2, p2, v3}, LA0/O;->D(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p2, ", inBitmap: "

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object p2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    invoke-static {p2}, LF2/p;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public static f(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .line 1
    invoke-static {p0}, LF2/p;->g(Landroid/graphics/BitmapFactory$Options;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, LF2/p;->l:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public static g(Landroid/graphics/BitmapFactory$Options;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 6
    .line 7
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11
    .line 12
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 15
    .line 16
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 17
    .line 18
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 19
    .line 20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v4, 0x1a

    .line 23
    .line 24
    if-lt v3, v4, :cond_0

    .line 25
    .line 26
    invoke-static {p0}, LE1/b0;->r(Landroid/graphics/BitmapFactory$Options;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, LE1/b0;->C(Landroid/graphics/BitmapFactory$Options;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, LE1/b0;->D(Landroid/graphics/BitmapFactory$Options;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 36
    .line 37
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 38
    .line 39
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lm2/u;IILw2/l;LF2/o;)LF2/d;
    .locals 15

    .line 1
    move-object v12, p0

    .line 2
    move-object/from16 v0, p4

    .line 3
    .line 4
    iget-object v1, v12, LF2/p;->c:Lz2/h;

    .line 5
    .line 6
    const/high16 v2, 0x10000

    .line 7
    .line 8
    const-class v3, [B

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Lz2/h;->d(ILjava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    move-object v13, v1

    .line 15
    check-cast v13, [B

    .line 16
    .line 17
    const-class v1, LF2/p;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v2, LF2/p;->l:Ljava/util/ArrayDeque;

    .line 21
    .line 22
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/graphics/BitmapFactory$Options;

    .line 28
    .line 29
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .line 33
    .line 34
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, LF2/p;->g(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    .line 40
    :cond_0
    move-object v14, v3

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_2

    .line 44
    :goto_0
    monitor-exit v1

    .line 45
    iput-object v13, v14, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 46
    .line 47
    sget-object v1, LF2/p;->f:Lw2/k;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lw2/l;->c(Lw2/k;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v5, v1

    .line 54
    check-cast v5, Lw2/b;

    .line 55
    .line 56
    sget-object v1, LF2/p;->g:Lw2/k;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lw2/l;->c(Lw2/k;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v6, v1

    .line 63
    check-cast v6, Lw2/m;

    .line 64
    .line 65
    sget-object v1, LF2/n;->f:Lw2/k;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lw2/l;->c(Lw2/k;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    move-object v4, v1

    .line 72
    check-cast v4, LF2/n;

    .line 73
    .line 74
    sget-object v1, LF2/p;->h:Lw2/k;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lw2/l;->c(Lw2/k;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    sget-object v1, LF2/p;->i:Lw2/k;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lw2/l;->c(Lw2/k;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lw2/l;->c(Lw2/k;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_1

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    const/4 v7, 0x1

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    const/4 v0, 0x0

    .line 110
    const/4 v7, 0x0

    .line 111
    :goto_1
    move-object v1, p0

    .line 112
    move-object/from16 v2, p1

    .line 113
    .line 114
    move-object v3, v14

    .line 115
    move/from16 v8, p2

    .line 116
    .line 117
    move/from16 v9, p3

    .line 118
    .line 119
    move-object/from16 v11, p5

    .line 120
    .line 121
    :try_start_3
    invoke-virtual/range {v1 .. v11}, LF2/p;->b(Lm2/u;Landroid/graphics/BitmapFactory$Options;LF2/n;Lw2/b;Lw2/m;ZIIZLF2/o;)Landroid/graphics/Bitmap;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-object v1, v12, LF2/p;->a:Lz2/d;

    .line 126
    .line 127
    invoke-static {v0, v1}, LF2/d;->c(Landroid/graphics/Bitmap;Lz2/d;)LF2/d;

    .line 128
    .line 129
    .line 130
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    invoke-static {v14}, LF2/p;->f(Landroid/graphics/BitmapFactory$Options;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v12, LF2/p;->c:Lz2/h;

    .line 135
    .line 136
    invoke-virtual {v1, v13}, Lz2/h;->h(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    return-object v0

    .line 140
    :catchall_1
    move-exception v0

    .line 141
    invoke-static {v14}, LF2/p;->f(Landroid/graphics/BitmapFactory$Options;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v12, LF2/p;->c:Lz2/h;

    .line 145
    .line 146
    invoke-virtual {v1, v13}, Lz2/h;->h(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :catchall_2
    move-exception v0

    .line 151
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 152
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    :goto_2
    monitor-exit v1

    .line 154
    throw v0
.end method

.method public final b(Lm2/u;Landroid/graphics/BitmapFactory$Options;LF2/n;Lw2/b;Lw2/m;ZIIZLF2/o;)Landroid/graphics/Bitmap;
    .locals 38

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move/from16 v6, p7

    .line 14
    .line 15
    move/from16 v7, p8

    .line 16
    .line 17
    move-object/from16 v8, p10

    .line 18
    .line 19
    sget v9, LP2/i;->b:I

    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 22
    .line 23
    .line 24
    move-result-wide v9

    .line 25
    const/4 v11, 0x1

    .line 26
    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 27
    .line 28
    iget-object v12, v1, LF2/p;->a:Lz2/d;

    .line 29
    .line 30
    invoke-static {v2, v3, v8, v12}, LF2/p;->c(Lm2/u;Landroid/graphics/BitmapFactory$Options;LF2/o;Lz2/d;)Landroid/graphics/Bitmap;

    .line 31
    .line 32
    .line 33
    const/4 v13, 0x0

    .line 34
    iput-boolean v13, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 35
    .line 36
    iget v14, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 37
    .line 38
    iget v15, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 39
    .line 40
    filled-new-array {v14, v15}, [I

    .line 41
    .line 42
    .line 43
    move-result-object v14

    .line 44
    aget v15, v14, v13

    .line 45
    .line 46
    aget v14, v14, v11

    .line 47
    .line 48
    iget-object v11, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v13, -0x1

    .line 51
    if-eq v15, v13, :cond_1

    .line 52
    .line 53
    if-ne v14, v13, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move/from16 v17, p6

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    const/16 v17, 0x0

    .line 60
    .line 61
    :goto_1
    iget v13, v2, Lm2/u;->G:I

    .line 62
    .line 63
    packed-switch v13, :pswitch_data_0

    .line 64
    .line 65
    .line 66
    iget-object v13, v2, Lm2/u;->I:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v13, Ljava/util/List;

    .line 69
    .line 70
    move-wide/from16 v19, v9

    .line 71
    .line 72
    iget-object v9, v2, Lm2/u;->J:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v9, Lcom/bumptech/glide/load/data/n;

    .line 75
    .line 76
    iget-object v10, v2, Lm2/u;->H:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v10, Lz2/h;

    .line 79
    .line 80
    move-object/from16 v21, v11

    .line 81
    .line 82
    new-instance v11, LF/i;

    .line 83
    .line 84
    const/4 v5, 0x7

    .line 85
    invoke-direct {v11, v5, v9, v10}, LF/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    const/4 v9, 0x0

    .line 93
    :goto_2
    if-ge v9, v5, :cond_3

    .line 94
    .line 95
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    check-cast v10, Lw2/f;

    .line 100
    .line 101
    invoke-virtual {v11, v10}, LF/i;->k(Lw2/f;)I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    move/from16 p6, v5

    .line 106
    .line 107
    const/4 v5, -0x1

    .line 108
    if-eq v10, v5, :cond_2

    .line 109
    .line 110
    move v13, v10

    .line 111
    goto/16 :goto_5

    .line 112
    .line 113
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 114
    .line 115
    move/from16 v5, p6

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    :goto_3
    const/4 v13, -0x1

    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :pswitch_0
    move-wide/from16 v19, v9

    .line 122
    .line 123
    move-object/from16 v21, v11

    .line 124
    .line 125
    iget-object v5, v2, Lm2/u;->J:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v5, Ljava/util/List;

    .line 128
    .line 129
    iget-object v9, v2, Lm2/u;->H:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v9, Lcom/bumptech/glide/load/data/n;

    .line 132
    .line 133
    iget-object v9, v9, Lcom/bumptech/glide/load/data/n;->b:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v9, LF2/w;

    .line 136
    .line 137
    invoke-virtual {v9}, LF2/w;->reset()V

    .line 138
    .line 139
    .line 140
    iget-object v10, v2, Lm2/u;->I:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v10, Lz2/h;

    .line 143
    .line 144
    invoke-static {v10, v9, v5}, LQ3/b;->j(Lz2/h;Ljava/io/InputStream;Ljava/util/List;)I

    .line 145
    .line 146
    .line 147
    move-result v13

    .line 148
    goto :goto_5

    .line 149
    :pswitch_1
    move-wide/from16 v19, v9

    .line 150
    .line 151
    move-object/from16 v21, v11

    .line 152
    .line 153
    iget-object v5, v2, Lm2/u;->I:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v5, Ljava/util/List;

    .line 156
    .line 157
    iget-object v9, v2, Lm2/u;->H:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v9, Ljava/nio/ByteBuffer;

    .line 160
    .line 161
    invoke-static {v9}, LP2/c;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    iget-object v10, v2, Lm2/u;->J:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v10, Lz2/h;

    .line 168
    .line 169
    if-nez v9, :cond_4

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    const/4 v13, 0x0

    .line 177
    :goto_4
    if-ge v13, v11, :cond_6

    .line 178
    .line 179
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v22

    .line 183
    move-object/from16 p6, v5

    .line 184
    .line 185
    move-object/from16 v5, v22

    .line 186
    .line 187
    check-cast v5, Lw2/f;

    .line 188
    .line 189
    :try_start_0
    invoke-interface {v5, v9, v10}, Lw2/f;->b(Ljava/nio/ByteBuffer;Lz2/h;)I

    .line 190
    .line 191
    .line 192
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    move-object/from16 v22, v10

    .line 194
    .line 195
    const/4 v10, 0x0

    .line 196
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 197
    .line 198
    .line 199
    move-result-object v16

    .line 200
    check-cast v16, Ljava/nio/ByteBuffer;

    .line 201
    .line 202
    const/4 v10, -0x1

    .line 203
    if-eq v5, v10, :cond_5

    .line 204
    .line 205
    move v13, v5

    .line 206
    goto :goto_5

    .line 207
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 208
    .line 209
    move-object/from16 v5, p6

    .line 210
    .line 211
    move-object/from16 v10, v22

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :catchall_0
    move-exception v0

    .line 215
    move-object v2, v0

    .line 216
    const/4 v3, 0x0

    .line 217
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 222
    .line 223
    throw v2

    .line 224
    :cond_6
    const/4 v10, -0x1

    .line 225
    goto :goto_3

    .line 226
    :goto_5
    const/16 v5, 0x5a

    .line 227
    .line 228
    packed-switch v13, :pswitch_data_1

    .line 229
    .line 230
    .line 231
    const/4 v10, 0x0

    .line 232
    goto :goto_6

    .line 233
    :pswitch_2
    const/16 v10, 0x10e

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :pswitch_3
    const/16 v10, 0x5a

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :pswitch_4
    const/16 v10, 0xb4

    .line 240
    .line 241
    :goto_6
    packed-switch v13, :pswitch_data_2

    .line 242
    .line 243
    .line 244
    const/4 v11, 0x0

    .line 245
    goto :goto_7

    .line 246
    :pswitch_5
    const/4 v11, 0x1

    .line 247
    :goto_7
    const/high16 v9, -0x80000000

    .line 248
    .line 249
    if-ne v6, v9, :cond_9

    .line 250
    .line 251
    if-eq v10, v5, :cond_8

    .line 252
    .line 253
    const/16 v5, 0x10e

    .line 254
    .line 255
    if-ne v10, v5, :cond_7

    .line 256
    .line 257
    goto :goto_8

    .line 258
    :cond_7
    move/from16 v23, v15

    .line 259
    .line 260
    goto :goto_9

    .line 261
    :cond_8
    const/16 v5, 0x10e

    .line 262
    .line 263
    :goto_8
    move/from16 v23, v14

    .line 264
    .line 265
    goto :goto_9

    .line 266
    :cond_9
    const/16 v5, 0x10e

    .line 267
    .line 268
    move/from16 v23, v6

    .line 269
    .line 270
    :goto_9
    if-ne v7, v9, :cond_c

    .line 271
    .line 272
    const/16 v9, 0x5a

    .line 273
    .line 274
    if-eq v10, v9, :cond_b

    .line 275
    .line 276
    if-ne v10, v5, :cond_a

    .line 277
    .line 278
    goto :goto_a

    .line 279
    :cond_a
    move v5, v14

    .line 280
    goto :goto_b

    .line 281
    :cond_b
    :goto_a
    move v5, v15

    .line 282
    goto :goto_b

    .line 283
    :cond_c
    move v5, v7

    .line 284
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lm2/u;->w()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    move/from16 v22, v13

    .line 289
    .line 290
    const-string v13, ", target density: "

    .line 291
    .line 292
    const-string v7, ", density: "

    .line 293
    .line 294
    const-string v6, "x"

    .line 295
    .line 296
    const-string v4, "Downsampler"

    .line 297
    .line 298
    move/from16 v25, v11

    .line 299
    .line 300
    const-string v11, "]"

    .line 301
    .line 302
    if-lez v15, :cond_d

    .line 303
    .line 304
    if-gtz v14, :cond_e

    .line 305
    .line 306
    :cond_d
    move-object v10, v4

    .line 307
    move-object v4, v7

    .line 308
    move-object v0, v11

    .line 309
    move-object/from16 p3, v12

    .line 310
    .line 311
    move-object v1, v13

    .line 312
    move v12, v14

    .line 313
    move v11, v15

    .line 314
    move/from16 v14, v23

    .line 315
    .line 316
    const/16 v24, 0x0

    .line 317
    .line 318
    move-object v13, v6

    .line 319
    const/4 v6, 0x3

    .line 320
    goto/16 :goto_1c

    .line 321
    .line 322
    :cond_e
    const/16 v1, 0x5a

    .line 323
    .line 324
    if-eq v10, v1, :cond_10

    .line 325
    .line 326
    const/16 v1, 0x10e

    .line 327
    .line 328
    if-ne v10, v1, :cond_f

    .line 329
    .line 330
    goto :goto_d

    .line 331
    :cond_f
    move-object/from16 v18, v7

    .line 332
    .line 333
    move-object/from16 p6, v11

    .line 334
    .line 335
    move v7, v14

    .line 336
    move v11, v15

    .line 337
    :goto_c
    move/from16 v1, v23

    .line 338
    .line 339
    move-object/from16 v23, v13

    .line 340
    .line 341
    goto :goto_e

    .line 342
    :cond_10
    :goto_d
    move-object/from16 v18, v7

    .line 343
    .line 344
    move-object/from16 p6, v11

    .line 345
    .line 346
    move v11, v14

    .line 347
    move v7, v15

    .line 348
    goto :goto_c

    .line 349
    :goto_e
    invoke-virtual {v0, v11, v7, v1, v5}, LF2/n;->b(IIII)F

    .line 350
    .line 351
    .line 352
    move-result v13

    .line 353
    const/16 v24, 0x0

    .line 354
    .line 355
    cmpg-float v26, v13, v24

    .line 356
    .line 357
    if-lez v26, :cond_22

    .line 358
    .line 359
    move/from16 v26, v10

    .line 360
    .line 361
    invoke-virtual {v0, v11, v7, v1, v5}, LF2/n;->a(IIII)I

    .line 362
    .line 363
    .line 364
    move-result v10

    .line 365
    if-eqz v10, :cond_21

    .line 366
    .line 367
    move-object/from16 v27, v6

    .line 368
    .line 369
    int-to-float v6, v11

    .line 370
    move/from16 v28, v14

    .line 371
    .line 372
    mul-float v14, v13, v6

    .line 373
    .line 374
    move/from16 v29, v15

    .line 375
    .line 376
    float-to-double v14, v14

    .line 377
    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    .line 378
    .line 379
    add-double v14, v14, v30

    .line 380
    .line 381
    double-to-int v14, v14

    .line 382
    int-to-float v15, v7

    .line 383
    move-object/from16 v32, v4

    .line 384
    .line 385
    mul-float v4, v13, v15

    .line 386
    .line 387
    move/from16 v33, v1

    .line 388
    .line 389
    float-to-double v0, v4

    .line 390
    add-double v0, v0, v30

    .line 391
    .line 392
    double-to-int v0, v0

    .line 393
    div-int v1, v11, v14

    .line 394
    .line 395
    div-int v0, v7, v0

    .line 396
    .line 397
    const/4 v4, 0x1

    .line 398
    if-ne v10, v4, :cond_11

    .line 399
    .line 400
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    goto :goto_f

    .line 405
    :cond_11
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    :goto_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 410
    .line 411
    const/16 v4, 0x17

    .line 412
    .line 413
    if-gt v1, v4, :cond_12

    .line 414
    .line 415
    sget-object v4, LF2/p;->j:Ljava/util/Set;

    .line 416
    .line 417
    iget-object v14, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 418
    .line 419
    invoke-interface {v4, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    if-eqz v4, :cond_12

    .line 424
    .line 425
    const/4 v4, 0x1

    .line 426
    goto :goto_10

    .line 427
    :cond_12
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    const/4 v4, 0x1

    .line 432
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-ne v10, v4, :cond_13

    .line 437
    .line 438
    int-to-float v4, v0

    .line 439
    const/high16 v10, 0x3f800000    # 1.0f

    .line 440
    .line 441
    div-float v14, v10, v13

    .line 442
    .line 443
    cmpg-float v4, v4, v14

    .line 444
    .line 445
    if-gez v4, :cond_13

    .line 446
    .line 447
    shl-int/lit8 v0, v0, 0x1

    .line 448
    .line 449
    :cond_13
    move v4, v0

    .line 450
    :goto_10
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 451
    .line 452
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 453
    .line 454
    if-ne v9, v0, :cond_15

    .line 455
    .line 456
    const/16 v0, 0x8

    .line 457
    .line 458
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 459
    .line 460
    .line 461
    move-result v0

    .line 462
    int-to-float v0, v0

    .line 463
    div-float/2addr v6, v0

    .line 464
    float-to-double v6, v6

    .line 465
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 466
    .line 467
    .line 468
    move-result-wide v6

    .line 469
    double-to-int v1, v6

    .line 470
    div-float/2addr v15, v0

    .line 471
    float-to-double v6, v15

    .line 472
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 473
    .line 474
    .line 475
    move-result-wide v6

    .line 476
    double-to-int v0, v6

    .line 477
    div-int/lit8 v6, v4, 0x8

    .line 478
    .line 479
    if-lez v6, :cond_14

    .line 480
    .line 481
    div-int/2addr v1, v6

    .line 482
    div-int/2addr v0, v6

    .line 483
    :cond_14
    :goto_11
    move-object/from16 v6, p3

    .line 484
    .line 485
    :goto_12
    move/from16 v14, v33

    .line 486
    .line 487
    goto :goto_16

    .line 488
    :cond_15
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 489
    .line 490
    if-eq v9, v0, :cond_1b

    .line 491
    .line 492
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 493
    .line 494
    if-ne v9, v0, :cond_16

    .line 495
    .line 496
    goto :goto_15

    .line 497
    :cond_16
    invoke-virtual {v9}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->isWebp()Z

    .line 498
    .line 499
    .line 500
    move-result v0

    .line 501
    if-eqz v0, :cond_18

    .line 502
    .line 503
    const/16 v0, 0x18

    .line 504
    .line 505
    if-lt v1, v0, :cond_17

    .line 506
    .line 507
    int-to-float v0, v4

    .line 508
    div-float/2addr v6, v0

    .line 509
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    div-float/2addr v15, v0

    .line 514
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 515
    .line 516
    .line 517
    move-result v0

    .line 518
    goto :goto_11

    .line 519
    :cond_17
    int-to-float v0, v4

    .line 520
    div-float/2addr v6, v0

    .line 521
    float-to-double v6, v6

    .line 522
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 523
    .line 524
    .line 525
    move-result-wide v6

    .line 526
    double-to-int v1, v6

    .line 527
    div-float/2addr v15, v0

    .line 528
    float-to-double v6, v15

    .line 529
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 530
    .line 531
    .line 532
    move-result-wide v6

    .line 533
    :goto_13
    double-to-int v0, v6

    .line 534
    goto :goto_11

    .line 535
    :cond_18
    rem-int v0, v11, v4

    .line 536
    .line 537
    if-nez v0, :cond_19

    .line 538
    .line 539
    rem-int v0, v7, v4

    .line 540
    .line 541
    if-eqz v0, :cond_1a

    .line 542
    .line 543
    :cond_19
    const/4 v1, 0x1

    .line 544
    goto :goto_14

    .line 545
    :cond_1a
    div-int v1, v11, v4

    .line 546
    .line 547
    div-int v0, v7, v4

    .line 548
    .line 549
    goto :goto_11

    .line 550
    :goto_14
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 551
    .line 552
    invoke-static {v2, v3, v8, v12}, LF2/p;->c(Lm2/u;Landroid/graphics/BitmapFactory$Options;LF2/o;Lz2/d;)Landroid/graphics/Bitmap;

    .line 553
    .line 554
    .line 555
    const/4 v6, 0x0

    .line 556
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 557
    .line 558
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 559
    .line 560
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 561
    .line 562
    filled-new-array {v0, v7}, [I

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    aget v7, v0, v6

    .line 567
    .line 568
    aget v0, v0, v1

    .line 569
    .line 570
    move-object/from16 v6, p3

    .line 571
    .line 572
    move v1, v7

    .line 573
    goto :goto_12

    .line 574
    :cond_1b
    :goto_15
    int-to-float v0, v4

    .line 575
    div-float/2addr v6, v0

    .line 576
    float-to-double v6, v6

    .line 577
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 578
    .line 579
    .line 580
    move-result-wide v6

    .line 581
    double-to-int v1, v6

    .line 582
    div-float/2addr v15, v0

    .line 583
    float-to-double v6, v15

    .line 584
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 585
    .line 586
    .line 587
    move-result-wide v6

    .line 588
    goto :goto_13

    .line 589
    :goto_16
    invoke-virtual {v6, v1, v0, v14, v5}, LF2/n;->b(IIII)F

    .line 590
    .line 591
    .line 592
    move-result v6

    .line 593
    float-to-double v6, v6

    .line 594
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 595
    .line 596
    cmpg-double v11, v6, v9

    .line 597
    .line 598
    if-gtz v11, :cond_1c

    .line 599
    .line 600
    move-wide/from16 v33, v6

    .line 601
    .line 602
    goto :goto_17

    .line 603
    :cond_1c
    div-double v33, v9, v6

    .line 604
    .line 605
    :goto_17
    const-wide v35, 0x41dfffffffc00000L    # 2.147483647E9

    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    mul-double v33, v33, v35

    .line 611
    .line 612
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->round(D)J

    .line 613
    .line 614
    .line 615
    move-result-wide v9

    .line 616
    long-to-int v10, v9

    .line 617
    int-to-double v8, v10

    .line 618
    mul-double v8, v8, v6

    .line 619
    .line 620
    add-double v8, v8, v30

    .line 621
    .line 622
    double-to-int v8, v8

    .line 623
    int-to-float v9, v8

    .line 624
    int-to-float v10, v10

    .line 625
    div-float/2addr v9, v10

    .line 626
    float-to-double v9, v9

    .line 627
    div-double v9, v6, v9

    .line 628
    .line 629
    move-object v15, v12

    .line 630
    move/from16 v33, v13

    .line 631
    .line 632
    int-to-double v12, v8

    .line 633
    mul-double v9, v9, v12

    .line 634
    .line 635
    add-double v9, v9, v30

    .line 636
    .line 637
    double-to-int v8, v9

    .line 638
    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 639
    .line 640
    if-gtz v11, :cond_1d

    .line 641
    .line 642
    move-wide v9, v6

    .line 643
    goto :goto_18

    .line 644
    :cond_1d
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 645
    .line 646
    div-double v9, v8, v6

    .line 647
    .line 648
    :goto_18
    mul-double v9, v9, v35

    .line 649
    .line 650
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    .line 651
    .line 652
    .line 653
    move-result-wide v8

    .line 654
    long-to-int v9, v8

    .line 655
    iput v9, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 656
    .line 657
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 658
    .line 659
    if-lez v8, :cond_1e

    .line 660
    .line 661
    if-lez v9, :cond_1e

    .line 662
    .line 663
    if-eq v8, v9, :cond_1e

    .line 664
    .line 665
    const/4 v8, 0x1

    .line 666
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 667
    .line 668
    :goto_19
    move-object/from16 v10, v32

    .line 669
    .line 670
    const/4 v8, 0x2

    .line 671
    goto :goto_1a

    .line 672
    :cond_1e
    const/4 v8, 0x0

    .line 673
    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 674
    .line 675
    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 676
    .line 677
    goto :goto_19

    .line 678
    :goto_1a
    invoke-static {v10, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 679
    .line 680
    .line 681
    move-result v9

    .line 682
    if-eqz v9, :cond_1f

    .line 683
    .line 684
    const-string v8, "Calculate scaling, source: ["

    .line 685
    .line 686
    const-string v9, "], degreesToRotate: "

    .line 687
    .line 688
    move-object/from16 v13, v27

    .line 689
    .line 690
    move/from16 v12, v28

    .line 691
    .line 692
    move/from16 v11, v29

    .line 693
    .line 694
    invoke-static {v8, v11, v13, v12, v9}, LA0/O;->D(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    move-result-object v8

    .line 698
    const-string v9, ", target: ["

    .line 699
    .line 700
    move-object/from16 p3, v15

    .line 701
    .line 702
    move/from16 v15, v26

    .line 703
    .line 704
    invoke-static {v8, v15, v9, v14, v13}, LA0/O;->J(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 705
    .line 706
    .line 707
    const-string v9, "], power of two scaled: ["

    .line 708
    .line 709
    invoke-static {v8, v5, v9, v1, v13}, LA0/O;->J(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    const-string v0, "], exact scale factor: "

    .line 716
    .line 717
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    move/from16 v0, v33

    .line 721
    .line 722
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    const-string v0, ", power of 2 sample size: "

    .line 726
    .line 727
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    const-string v0, ", adjusted scale factor: "

    .line 734
    .line 735
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    move-object/from16 v1, v23

    .line 742
    .line 743
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 747
    .line 748
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    move-object/from16 v4, v18

    .line 752
    .line 753
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 757
    .line 758
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    .line 767
    .line 768
    goto :goto_1b

    .line 769
    :cond_1f
    move-object/from16 p3, v15

    .line 770
    .line 771
    move-object/from16 v4, v18

    .line 772
    .line 773
    move-object/from16 v1, v23

    .line 774
    .line 775
    move-object/from16 v13, v27

    .line 776
    .line 777
    move/from16 v12, v28

    .line 778
    .line 779
    move/from16 v11, v29

    .line 780
    .line 781
    :cond_20
    :goto_1b
    move-object/from16 v6, p0

    .line 782
    .line 783
    goto/16 :goto_1d

    .line 784
    .line 785
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 786
    .line 787
    const-string v1, "Cannot round with null rounding"

    .line 788
    .line 789
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    throw v0

    .line 793
    :cond_22
    move v12, v14

    .line 794
    move v11, v15

    .line 795
    move v14, v1

    .line 796
    move-object/from16 v37, v6

    .line 797
    .line 798
    move-object v6, v0

    .line 799
    move v0, v13

    .line 800
    move-object/from16 v13, v37

    .line 801
    .line 802
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 803
    .line 804
    new-instance v2, Ljava/lang/StringBuilder;

    .line 805
    .line 806
    const-string v3, "Cannot scale with factor: "

    .line 807
    .line 808
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    const-string v0, " from: "

    .line 815
    .line 816
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    const-string v0, ", source: ["

    .line 823
    .line 824
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    const-string v0, "], target: ["

    .line 828
    .line 829
    invoke-static {v2, v11, v13, v12, v0}, LA0/O;->J(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    move-object/from16 v0, p6

    .line 842
    .line 843
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    throw v1

    .line 854
    :goto_1c
    invoke-static {v10, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 855
    .line 856
    .line 857
    move-result v7

    .line 858
    if-eqz v7, :cond_20

    .line 859
    .line 860
    new-instance v6, Ljava/lang/StringBuilder;

    .line 861
    .line 862
    const-string v7, "Unable to determine dimensions for: "

    .line 863
    .line 864
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    const-string v7, " with target ["

    .line 871
    .line 872
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    .line 893
    .line 894
    goto :goto_1b

    .line 895
    :goto_1d
    iget-object v0, v6, LF2/p;->e:LF2/v;

    .line 896
    .line 897
    move/from16 v7, v17

    .line 898
    .line 899
    move/from16 v8, v25

    .line 900
    .line 901
    invoke-virtual {v0, v14, v5, v7, v8}, LF2/v;->c(IIZZ)Z

    .line 902
    .line 903
    .line 904
    move-result v0

    .line 905
    if-eqz v0, :cond_23

    .line 906
    .line 907
    invoke-static {}, Lokhttp3/a;->c()Landroid/graphics/Bitmap$Config;

    .line 908
    .line 909
    .line 910
    move-result-object v7

    .line 911
    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 912
    .line 913
    const/4 v7, 0x0

    .line 914
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 915
    .line 916
    :cond_23
    if-eqz v0, :cond_24

    .line 917
    .line 918
    move-object v8, v10

    .line 919
    goto :goto_1f

    .line 920
    :cond_24
    sget-object v0, Lw2/b;->G:Lw2/b;

    .line 921
    .line 922
    move-object/from16 v7, p4

    .line 923
    .line 924
    move-object v8, v10

    .line 925
    if-eq v7, v0, :cond_26

    .line 926
    .line 927
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lm2/u;->w()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    .line 932
    .line 933
    .line 934
    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 935
    if-eqz v0, :cond_25

    .line 936
    .line 937
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 938
    .line 939
    goto :goto_1e

    .line 940
    :catch_0
    move-exception v0

    .line 941
    const/4 v9, 0x3

    .line 942
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 943
    .line 944
    .line 945
    move-result v9

    .line 946
    if-eqz v9, :cond_25

    .line 947
    .line 948
    new-instance v9, Ljava/lang/StringBuilder;

    .line 949
    .line 950
    const-string v10, "Cannot determine whether the image has alpha or not from header, format "

    .line 951
    .line 952
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v7

    .line 962
    invoke-static {v8, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 963
    .line 964
    .line 965
    :cond_25
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 966
    .line 967
    :goto_1e
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 968
    .line 969
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 970
    .line 971
    if-ne v0, v7, :cond_27

    .line 972
    .line 973
    const/4 v7, 0x1

    .line 974
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 975
    .line 976
    goto :goto_1f

    .line 977
    :cond_26
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 978
    .line 979
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 980
    .line 981
    :cond_27
    :goto_1f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 982
    .line 983
    if-ltz v11, :cond_28

    .line 984
    .line 985
    if-ltz v12, :cond_28

    .line 986
    .line 987
    if-eqz p9, :cond_28

    .line 988
    .line 989
    move v7, v14

    .line 990
    goto :goto_21

    .line 991
    :cond_28
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 992
    .line 993
    if-lez v5, :cond_29

    .line 994
    .line 995
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 996
    .line 997
    if-lez v7, :cond_29

    .line 998
    .line 999
    if-eq v5, v7, :cond_29

    .line 1000
    .line 1001
    int-to-float v5, v5

    .line 1002
    int-to-float v7, v7

    .line 1003
    div-float v10, v5, v7

    .line 1004
    .line 1005
    goto :goto_20

    .line 1006
    :cond_29
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1007
    .line 1008
    :goto_20
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1009
    .line 1010
    int-to-float v7, v11

    .line 1011
    int-to-float v9, v5

    .line 1012
    div-float/2addr v7, v9

    .line 1013
    float-to-double v14, v7

    .line 1014
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    .line 1015
    .line 1016
    .line 1017
    move-result-wide v14

    .line 1018
    double-to-int v7, v14

    .line 1019
    int-to-float v14, v12

    .line 1020
    div-float/2addr v14, v9

    .line 1021
    float-to-double v14, v14

    .line 1022
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    .line 1023
    .line 1024
    .line 1025
    move-result-wide v14

    .line 1026
    double-to-int v9, v14

    .line 1027
    int-to-float v7, v7

    .line 1028
    mul-float v7, v7, v10

    .line 1029
    .line 1030
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 1031
    .line 1032
    .line 1033
    move-result v7

    .line 1034
    int-to-float v9, v9

    .line 1035
    mul-float v9, v9, v10

    .line 1036
    .line 1037
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 1038
    .line 1039
    .line 1040
    move-result v9

    .line 1041
    const/4 v14, 0x2

    .line 1042
    invoke-static {v8, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1043
    .line 1044
    .line 1045
    move-result v15

    .line 1046
    if-eqz v15, :cond_2a

    .line 1047
    .line 1048
    const-string v14, "Calculated target ["

    .line 1049
    .line 1050
    const-string v15, "] for source ["

    .line 1051
    .line 1052
    invoke-static {v14, v7, v13, v9, v15}, LA0/O;->D(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v14

    .line 1056
    const-string v15, "], sampleSize: "

    .line 1057
    .line 1058
    invoke-static {v14, v11, v13, v12, v15}, LA0/O;->J(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    .line 1064
    const-string v5, ", targetDensity: "

    .line 1065
    .line 1066
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    .line 1069
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 1070
    .line 1071
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 1078
    .line 1079
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    .line 1082
    const-string v5, ", density multiplier: "

    .line 1083
    .line 1084
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v5

    .line 1094
    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    .line 1096
    .line 1097
    :cond_2a
    move v5, v9

    .line 1098
    :goto_21
    const/4 v9, 0x0

    .line 1099
    const/16 v10, 0x1a

    .line 1100
    .line 1101
    if-lez v7, :cond_2e

    .line 1102
    .line 1103
    if-lez v5, :cond_2e

    .line 1104
    .line 1105
    if-lt v0, v10, :cond_2c

    .line 1106
    .line 1107
    iget-object v14, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1108
    .line 1109
    invoke-static {}, Lokhttp3/a;->c()Landroid/graphics/Bitmap$Config;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v15

    .line 1113
    if-ne v14, v15, :cond_2b

    .line 1114
    .line 1115
    goto :goto_24

    .line 1116
    :cond_2b
    invoke-static/range {p2 .. p2}, LE1/b0;->f(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$Config;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v14

    .line 1120
    goto :goto_22

    .line 1121
    :cond_2c
    move-object v14, v9

    .line 1122
    :goto_22
    if-nez v14, :cond_2d

    .line 1123
    .line 1124
    iget-object v14, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1125
    .line 1126
    :cond_2d
    move-object/from16 v15, p3

    .line 1127
    .line 1128
    invoke-interface {v15, v7, v5, v14}, Lz2/d;->j(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v5

    .line 1132
    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 1133
    .line 1134
    :goto_23
    move-object/from16 v5, p5

    .line 1135
    .line 1136
    goto :goto_25

    .line 1137
    :cond_2e
    :goto_24
    move-object/from16 v15, p3

    .line 1138
    .line 1139
    goto :goto_23

    .line 1140
    :goto_25
    if-eqz v5, :cond_30

    .line 1141
    .line 1142
    const/16 v7, 0x1c

    .line 1143
    .line 1144
    if-lt v0, v7, :cond_31

    .line 1145
    .line 1146
    sget-object v0, Lw2/m;->G:Lw2/m;

    .line 1147
    .line 1148
    if-ne v5, v0, :cond_2f

    .line 1149
    .line 1150
    invoke-static/range {p2 .. p2}, LE1/b0;->h(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/ColorSpace;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v0

    .line 1154
    if-eqz v0, :cond_2f

    .line 1155
    .line 1156
    invoke-static/range {p2 .. p2}, LE1/b0;->h(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/ColorSpace;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v0

    .line 1160
    invoke-static {v0}, LE1/b0;->w(Landroid/graphics/ColorSpace;)Z

    .line 1161
    .line 1162
    .line 1163
    move-result v0

    .line 1164
    if-eqz v0, :cond_2f

    .line 1165
    .line 1166
    invoke-static {}, LE1/b0;->g()Landroid/graphics/ColorSpace$Named;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v0

    .line 1170
    goto :goto_26

    .line 1171
    :cond_2f
    invoke-static {}, LE1/b0;->B()Landroid/graphics/ColorSpace$Named;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v0

    .line 1175
    :goto_26
    invoke-static {v0}, LE1/b0;->i(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v0

    .line 1179
    invoke-static {v3, v0}, LE1/b0;->s(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 1180
    .line 1181
    .line 1182
    :cond_30
    :goto_27
    move-object/from16 v5, p10

    .line 1183
    .line 1184
    goto :goto_28

    .line 1185
    :cond_31
    if-lt v0, v10, :cond_30

    .line 1186
    .line 1187
    invoke-static {}, LE1/b0;->B()Landroid/graphics/ColorSpace$Named;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v0

    .line 1191
    invoke-static {v0}, LE1/b0;->i(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    invoke-static {v3, v0}, LE1/b0;->s(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 1196
    .line 1197
    .line 1198
    goto :goto_27

    .line 1199
    :goto_28
    invoke-static {v2, v3, v5, v15}, LF2/p;->c(Lm2/u;Landroid/graphics/BitmapFactory$Options;LF2/o;Lz2/d;)Landroid/graphics/Bitmap;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0

    .line 1203
    invoke-interface {v5, v0, v15}, LF2/o;->b(Landroid/graphics/Bitmap;Lz2/d;)V

    .line 1204
    .line 1205
    .line 1206
    const/4 v2, 0x2

    .line 1207
    invoke-static {v8, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1208
    .line 1209
    .line 1210
    move-result v2

    .line 1211
    if-eqz v2, :cond_32

    .line 1212
    .line 1213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    const-string v5, "Decoded "

    .line 1216
    .line 1217
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    invoke-static {v0}, LF2/p;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v5

    .line 1224
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    .line 1226
    .line 1227
    const-string v5, " from ["

    .line 1228
    .line 1229
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    .line 1237
    .line 1238
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1239
    .line 1240
    .line 1241
    const-string v5, "] "

    .line 1242
    .line 1243
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    .line 1245
    .line 1246
    move-object/from16 v5, v21

    .line 1247
    .line 1248
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    .line 1250
    .line 1251
    const-string v5, " with inBitmap "

    .line 1252
    .line 1253
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    .line 1255
    .line 1256
    iget-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 1257
    .line 1258
    invoke-static {v5}, LF2/p;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v5

    .line 1262
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    .line 1264
    .line 1265
    const-string v5, " for ["

    .line 1266
    .line 1267
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    .line 1269
    .line 1270
    move/from16 v5, p7

    .line 1271
    .line 1272
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    .line 1277
    .line 1278
    move/from16 v5, p8

    .line 1279
    .line 1280
    const/4 v7, 0x0

    .line 1281
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1282
    .line 1283
    .line 1284
    const-string v5, "], sample size: "

    .line 1285
    .line 1286
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    .line 1288
    .line 1289
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1290
    .line 1291
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    .line 1296
    .line 1297
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 1298
    .line 1299
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    .line 1304
    .line 1305
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 1306
    .line 1307
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1308
    .line 1309
    .line 1310
    const-string v1, ", thread: "

    .line 1311
    .line 1312
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    .line 1314
    .line 1315
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v1

    .line 1319
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v1

    .line 1323
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    .line 1325
    .line 1326
    const-string v1, ", duration: "

    .line 1327
    .line 1328
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    .line 1330
    .line 1331
    invoke-static/range {v19 .. v20}, LP2/i;->a(J)D

    .line 1332
    .line 1333
    .line 1334
    move-result-wide v3

    .line 1335
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v1

    .line 1342
    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    .line 1344
    .line 1345
    goto :goto_29

    .line 1346
    :cond_32
    const/4 v7, 0x0

    .line 1347
    :goto_29
    if-eqz v0, :cond_34

    .line 1348
    .line 1349
    iget-object v1, v6, LF2/p;->b:Landroid/util/DisplayMetrics;

    .line 1350
    .line 1351
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1352
    .line 1353
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1354
    .line 1355
    .line 1356
    packed-switch v22, :pswitch_data_3

    .line 1357
    .line 1358
    .line 1359
    move-object v9, v0

    .line 1360
    goto/16 :goto_2c

    .line 1361
    .line 1362
    :pswitch_6
    new-instance v1, Landroid/graphics/Matrix;

    .line 1363
    .line 1364
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1365
    .line 1366
    .line 1367
    const/high16 v2, 0x43340000    # 180.0f

    .line 1368
    .line 1369
    const/high16 v3, 0x42b40000    # 90.0f

    .line 1370
    .line 1371
    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 1372
    .line 1373
    const/high16 v5, -0x40800000    # -1.0f

    .line 1374
    .line 1375
    packed-switch v22, :pswitch_data_4

    .line 1376
    .line 1377
    .line 1378
    goto :goto_2a

    .line 1379
    :pswitch_7
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1380
    .line 1381
    .line 1382
    goto :goto_2a

    .line 1383
    :pswitch_8
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1384
    .line 1385
    .line 1386
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1387
    .line 1388
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1389
    .line 1390
    .line 1391
    goto :goto_2a

    .line 1392
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1393
    .line 1394
    .line 1395
    goto :goto_2a

    .line 1396
    :pswitch_a
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1397
    .line 1398
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1402
    .line 1403
    .line 1404
    goto :goto_2a

    .line 1405
    :pswitch_b
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1406
    .line 1407
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1408
    .line 1409
    .line 1410
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1411
    .line 1412
    .line 1413
    goto :goto_2a

    .line 1414
    :pswitch_c
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1415
    .line 1416
    .line 1417
    goto :goto_2a

    .line 1418
    :pswitch_d
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1419
    .line 1420
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1421
    .line 1422
    .line 1423
    :goto_2a
    new-instance v2, Landroid/graphics/RectF;

    .line 1424
    .line 1425
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1426
    .line 1427
    .line 1428
    move-result v3

    .line 1429
    int-to-float v3, v3

    .line 1430
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1431
    .line 1432
    .line 1433
    move-result v4

    .line 1434
    int-to-float v4, v4

    .line 1435
    invoke-direct {v2, v7, v7, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 1442
    .line 1443
    .line 1444
    move-result v3

    .line 1445
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 1446
    .line 1447
    .line 1448
    move-result v3

    .line 1449
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 1450
    .line 1451
    .line 1452
    move-result v4

    .line 1453
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 1454
    .line 1455
    .line 1456
    move-result v4

    .line 1457
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v5

    .line 1461
    if-eqz v5, :cond_33

    .line 1462
    .line 1463
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v5

    .line 1467
    goto :goto_2b

    .line 1468
    :cond_33
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1469
    .line 1470
    :goto_2b
    invoke-interface {v15, v3, v4, v5}, Lz2/d;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v3

    .line 1474
    iget v4, v2, Landroid/graphics/RectF;->left:F

    .line 1475
    .line 1476
    neg-float v4, v4

    .line 1477
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 1478
    .line 1479
    neg-float v2, v2

    .line 1480
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1481
    .line 1482
    .line 1483
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 1484
    .line 1485
    .line 1486
    move-result v2

    .line 1487
    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1488
    .line 1489
    .line 1490
    invoke-static {v0, v3, v1}, LF2/y;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 1491
    .line 1492
    .line 1493
    move-object v9, v3

    .line 1494
    :goto_2c
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1495
    .line 1496
    .line 1497
    move-result v1

    .line 1498
    if-nez v1, :cond_34

    .line 1499
    .line 1500
    invoke-interface {v15, v0}, Lz2/d;->a(Landroid/graphics/Bitmap;)V

    .line 1501
    .line 1502
    .line 1503
    :cond_34
    return-object v9

    .line 1504
    nop

    .line 1505
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
