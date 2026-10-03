.class public final LF3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF3/a;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LF3/l;


# direct methods
.method public synthetic constructor <init>(LF3/l;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LF3/i;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LF3/i;->H:LF3/l;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 9

    .line 1
    iget v0, p0, LF3/i;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LF3/i;->H:LF3/l;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-virtual {v1, p1, v0}, LF3/l;->e(Landroid/graphics/Bitmap;I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    sget-object v0, LF3/l;->v:LH3/b;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v3, v2

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/high16 v5, 0x41100000    # 9.0f

    .line 29
    .line 30
    mul-float v5, v5, v3

    .line 31
    .line 32
    const/high16 v6, 0x41800000    # 16.0f

    .line 33
    .line 34
    div-float/2addr v5, v6

    .line 35
    const/high16 v6, 0x3f000000    # 0.5f

    .line 36
    .line 37
    add-float/2addr v5, v6

    .line 38
    float-to-int v5, v5

    .line 39
    sub-int v6, v5, v4

    .line 40
    .line 41
    int-to-float v6, v6

    .line 42
    const/high16 v7, 0x40000000    # 2.0f

    .line 43
    .line 44
    div-float/2addr v6, v7

    .line 45
    int-to-float v4, v4

    .line 46
    add-float/2addr v4, v6

    .line 47
    new-instance v7, Landroid/graphics/RectF;

    .line 48
    .line 49
    const/4 v8, 0x0

    .line 50
    invoke-direct {v7, v8, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 60
    .line 61
    :cond_1
    invoke-static {v2, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    new-instance v3, Landroid/graphics/Canvas;

    .line 66
    .line 67
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, p1, v0, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 71
    .line 72
    .line 73
    move-object v0, v2

    .line 74
    :goto_0
    const/4 p1, 0x0

    .line 75
    invoke-virtual {v1, v0, p1}, LF3/l;->e(Landroid/graphics/Bitmap;I)V

    .line 76
    .line 77
    .line 78
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
