.class public final Ll/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ3/W;


# instance fields
.field public G:Ljava/lang/Object;

.field public H:Ljava/lang/Object;

.field public I:Ljava/lang/Object;

.field public J:Ljava/lang/Object;

.field public K:Ljava/lang/Object;

.field public L:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const/4 v0, 0x7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f08052e

    const v1, 0x7f08052c

    const v2, 0x7f0804e2

    .line 3
    filled-new-array {p1, v1, v2}, [I

    move-result-object p1

    iput-object p1, p0, Ll/x;->G:Ljava/lang/Object;

    .line 4
    new-array p1, v0, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Ll/x;->H:Ljava/lang/Object;

    .line 5
    new-array p1, v0, [I

    fill-array-data p1, :array_1

    iput-object p1, p0, Ll/x;->I:Ljava/lang/Object;

    const p1, 0x7f080513

    const v0, 0x7f0804f1

    const v1, 0x7f080512

    .line 6
    filled-new-array {p1, v0, v1}, [I

    move-result-object p1

    iput-object p1, p0, Ll/x;->J:Ljava/lang/Object;

    const p1, 0x7f080525

    const v0, 0x7f08052f

    .line 7
    filled-new-array {p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Ll/x;->K:Ljava/lang/Object;

    const p1, 0x7f0804e6

    const v0, 0x7f0804ec

    const v1, 0x7f0804e5

    const v2, 0x7f0804eb

    .line 8
    filled-new-array {v1, v2, p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Ll/x;->L:Ljava/lang/Object;

    return-void

    .line 9
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :array_0
    .array-data 4
        0x7f0804fa
        0x7f08051d
        0x7f080501
        0x7f0804fc
        0x7f0804fd
        0x7f080500
        0x7f0804ff
    .end array-data

    :array_1
    .array-data 4
        0x7f08052b
        0x7f08052d
        0x7f0804f3
        0x7f080527
        0x7f080528
        0x7f080529
        0x7f08052a
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lpe/hf/black20/util/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Ll/x;->K:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Ll/x;->H:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Ll/x;->I:Ljava/lang/Object;

    .line 15
    iput-object p3, p0, Ll/x;->G:Ljava/lang/Object;

    .line 16
    iput-object p4, p0, Ll/x;->J:Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Ll/x;->L:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    iput-object p1, p0, Ll/x;->L:Ljava/lang/Object;

    .line 18
    new-instance p1, Ls2/i;

    new-instance p2, Lpe/hf/black20/util/c;

    invoke-direct {p2, p0}, Lpe/hf/black20/util/c;-><init>(Ll/x;)V

    new-instance p3, Lpe/hf/black20/util/c;

    invoke-direct {p3, p0}, Lpe/hf/black20/util/c;-><init>(Ll/x;)V

    invoke-direct {p1, p4, p2, p3}, Ls2/i;-><init>(Ljava/lang/String;Lpe/hf/black20/util/c;Lpe/hf/black20/util/c;)V

    .line 19
    new-instance p2, LA2/i;

    const p3, 0xc350

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, LA2/i;-><init>(II)V

    .line 20
    iput-object p2, p1, Lr2/k;->Q:LA2/i;

    .line 21
    iget-object p2, p0, Ll/x;->H:Ljava/lang/Object;

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/Q1;->c(Landroid/content/Context;)Lr2/l;

    move-result-object p2

    .line 22
    invoke-virtual {p2, p1}, Lr2/l;->a(Lr2/k;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/x;->G:Ljava/lang/Object;

    iput-object p2, p0, Ll/x;->H:Ljava/lang/Object;

    iput-object p3, p0, Ll/x;->I:Ljava/lang/Object;

    iput-object p4, p0, Ll/x;->J:Ljava/lang/Object;

    iput-object p5, p0, Ll/x;->K:Ljava/lang/Object;

    iput-object p6, p0, Ll/x;->L:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/io/DataInputStream;)Lt0/r;
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-ltz v5, :cond_1

    .line 23
    .line 24
    const/high16 v6, 0xa00000

    .line 25
    .line 26
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    sget-object v8, Lp0/M;->b:[B

    .line 31
    .line 32
    const/4 v9, 0x0

    .line 33
    :goto_1
    if-eq v9, v5, :cond_0

    .line 34
    .line 35
    add-int v10, v9, v7

    .line 36
    .line 37
    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-virtual {p0, v8, v9, v7}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 42
    .line 43
    .line 44
    sub-int v7, v5, v10

    .line 45
    .line 46
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    move v9, v10

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 59
    .line 60
    const-string v0, "Invalid value size: "

    .line 61
    .line 62
    invoke-static {v0, v5}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_2
    new-instance p0, Lt0/r;

    .line 71
    .line 72
    invoke-direct {p0, v1}, Lt0/r;-><init>(Ljava/util/Map;)V

    .line 73
    .line 74
    .line 75
    return-object p0
.end method

.method public static b(Lt0/r;Ljava/io/DataOutputStream;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lt0/r;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, [B

    .line 44
    .line 45
    array-length v1, v0

    .line 46
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public static d([II)Z
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget v3, p0, v2

    .line 7
    .line 8
    if-ne v3, p1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method public static f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const v2, 0x7f040105

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v2}, Ll/c1;->c(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const v3, 0x7f040103

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v3}, Ll/c1;->b(Landroid/content/Context;I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 v3, 0x0

    .line 19
    aput p0, v1, v3

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    invoke-static {v2, p1}, LG/a;->c(II)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    aput v4, v1, p0

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    invoke-static {v2, p1}, LG/a;->c(II)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    aput v2, v1, v4

    .line 34
    .line 35
    new-array v0, v0, [[I

    .line 36
    .line 37
    sget-object v2, Ll/c1;->b:[I

    .line 38
    .line 39
    aput-object v2, v0, v3

    .line 40
    .line 41
    sget-object v2, Ll/c1;->d:[I

    .line 42
    .line 43
    aput-object v2, v0, p0

    .line 44
    .line 45
    sget-object p0, Ll/c1;->c:[I

    .line 46
    .line 47
    aput-object p0, v0, v4

    .line 48
    .line 49
    sget-object p0, Ll/c1;->f:[I

    .line 50
    .line 51
    const/4 v2, 0x3

    .line 52
    aput-object p0, v0, v2

    .line 53
    .line 54
    aput p1, v1, v2

    .line 55
    .line 56
    new-instance p0, Landroid/content/res/ColorStateList;

    .line 57
    .line 58
    invoke-direct {p0, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 59
    .line 60
    .line 61
    return-object p0
.end method

.method public static i(Ll/V0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const v2, 0x7f080521

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v2}, Ll/V0;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const v3, 0x7f080522

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v3}, Ll/V0;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    instance-of p1, v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-ne p1, p2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-ne p1, p2, :cond_0

    .line 41
    .line 42
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    .line 44
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-direct {p1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 55
    .line 56
    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance v4, Landroid/graphics/Canvas;

    .line 61
    .line 62
    invoke-direct {v4, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3, v3, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 69
    .line 70
    .line 71
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 72
    .line 73
    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    .line 75
    .line 76
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 77
    .line 78
    invoke-direct {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 79
    .line 80
    .line 81
    move-object p1, v4

    .line 82
    :goto_0
    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 83
    .line 84
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 85
    .line 86
    .line 87
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 88
    .line 89
    if-eqz v4, :cond_1

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-ne v4, p2, :cond_1

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-ne v4, p2, :cond_1

    .line 102
    .line 103
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 107
    .line 108
    invoke-static {p2, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    new-instance v5, Landroid/graphics/Canvas;

    .line 113
    .line 114
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v3, v3, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    .line 122
    .line 123
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 124
    .line 125
    invoke-direct {p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    .line 129
    .line 130
    const/4 v4, 0x3

    .line 131
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 132
    .line 133
    aput-object v2, v4, v3

    .line 134
    .line 135
    aput-object p0, v4, v1

    .line 136
    .line 137
    aput-object p1, v4, v0

    .line 138
    .line 139
    invoke-direct {p2, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    .line 142
    const/high16 p0, 0x1020000

    .line 143
    .line 144
    invoke-virtual {p2, v3, p0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 145
    .line 146
    .line 147
    const p0, 0x102000f

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v1, p0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 151
    .line 152
    .line 153
    const p0, 0x102000d

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v0, p0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 157
    .line 158
    .line 159
    return-object p2
.end method

.method public static n(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    sget-object p2, Ll/y;->b:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    :cond_0
    sget-object v0, Ll/y;->b:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    const-class v0, Ll/y;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-static {p1, p2}, Ll/V0;->h(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v0

    .line 19
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0

    .line 25
    throw p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/x;->L:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string p2, "Property \"autoMetadata\" has not been set"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public final e()LU2/h;
    .locals 11

    .line 1
    iget-object v0, p0, Ll/x;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, " transportName"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    :goto_0
    iget-object v1, p0, Ll/x;->I:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, LU2/l;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v1, " encodedPayload"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    iget-object v1, p0, Ll/x;->J:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Ljava/lang/Long;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    const-string v1, " eventMillis"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_2
    iget-object v1, p0, Ll/x;->K:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ljava/lang/Long;

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    const-string v1, " uptimeMillis"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_3
    iget-object v1, p0, Ll/x;->L:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Ljava/util/Map;

    .line 51
    .line 52
    if-nez v1, :cond_4

    .line 53
    .line 54
    const-string v1, " autoMetadata"

    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    new-instance v0, LU2/h;

    .line 67
    .line 68
    iget-object v1, p0, Ll/x;->G:Ljava/lang/Object;

    .line 69
    .line 70
    move-object v3, v1

    .line 71
    check-cast v3, Ljava/lang/String;

    .line 72
    .line 73
    iget-object v1, p0, Ll/x;->H:Ljava/lang/Object;

    .line 74
    .line 75
    move-object v4, v1

    .line 76
    check-cast v4, Ljava/lang/Integer;

    .line 77
    .line 78
    iget-object v1, p0, Ll/x;->I:Ljava/lang/Object;

    .line 79
    .line 80
    move-object v5, v1

    .line 81
    check-cast v5, LU2/l;

    .line 82
    .line 83
    iget-object v1, p0, Ll/x;->J:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v1, Ljava/lang/Long;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    iget-object v1, p0, Ll/x;->K:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v1, Ljava/lang/Long;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v8

    .line 99
    iget-object v1, p0, Ll/x;->L:Ljava/lang/Object;

    .line 100
    .line 101
    move-object v10, v1

    .line 102
    check-cast v10, Ljava/util/Map;

    .line 103
    .line 104
    move-object v2, v0

    .line 105
    invoke-direct/range {v2 .. v10}, LU2/h;-><init>(Ljava/lang/String;Ljava/lang/Integer;LU2/l;JJLjava/util/Map;)V

    .line 106
    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string v2, "Missing required properties:"

    .line 112
    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v1
.end method

.method public final g(Ljava/lang/String;)Lt0/n;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/x;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lt0/n;

    .line 10
    .line 11
    return-object p1
.end method

.method public final h(Ljava/lang/String;)Lt0/n;
    .locals 5

    .line 1
    iget-object v0, p0, Ll/x;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lt0/n;

    .line 10
    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Ll/x;->H:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    add-int/lit8 v4, v1, -0x1

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    add-int/2addr v4, v2

    .line 34
    :goto_0
    if-gez v4, :cond_3

    .line 35
    .line 36
    :goto_1
    if-ge v3, v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eq v3, v4, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_2
    move v4, v3

    .line 49
    :cond_3
    new-instance v0, Lt0/n;

    .line 50
    .line 51
    sget-object v1, Lt0/r;->c:Lt0/r;

    .line 52
    .line 53
    invoke-direct {v0, v4, p1, v1}, Lt0/n;-><init>(ILjava/lang/String;Lt0/r;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Ll/x;->G:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Ll/x;->H:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-virtual {v1, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Ll/x;->J:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Landroid/util/SparseBooleanArray;

    .line 73
    .line 74
    invoke-virtual {p1, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Ll/x;->K:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, Lt0/q;

    .line 80
    .line 81
    invoke-interface {p1, v0}, Lt0/q;->c(Lt0/n;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    return-object v0
.end method

.method public final j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8

    .line 1
    const v0, 0x7f0804f6

    .line 2
    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    const p2, 0x7f060015

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, LJ6/r;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const v0, 0x7f080524

    .line 15
    .line 16
    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    const p2, 0x7f060018

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, LJ6/r;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    const v0, 0x7f080523

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-ne p2, v0, :cond_3

    .line 32
    .line 33
    const/4 p2, 0x3

    .line 34
    new-array v0, p2, [[I

    .line 35
    .line 36
    new-array p2, p2, [I

    .line 37
    .line 38
    const v2, 0x7f04010c

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v2}, Ll/c1;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/4 v4, 0x2

    .line 46
    const v5, 0x7f040104

    .line 47
    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_2

    .line 57
    .line 58
    sget-object v2, Ll/c1;->b:[I

    .line 59
    .line 60
    aput-object v2, v0, v1

    .line 61
    .line 62
    invoke-virtual {v3, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    aput v2, p2, v1

    .line 67
    .line 68
    sget-object v1, Ll/c1;->e:[I

    .line 69
    .line 70
    aput-object v1, v0, v6

    .line 71
    .line 72
    invoke-static {p1, v5}, Ll/c1;->c(Landroid/content/Context;I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    aput p1, p2, v6

    .line 77
    .line 78
    sget-object p1, Ll/c1;->f:[I

    .line 79
    .line 80
    aput-object p1, v0, v4

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    aput p1, p2, v4

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    sget-object v3, Ll/c1;->b:[I

    .line 90
    .line 91
    aput-object v3, v0, v1

    .line 92
    .line 93
    invoke-static {p1, v2}, Ll/c1;->b(Landroid/content/Context;I)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    aput v3, p2, v1

    .line 98
    .line 99
    sget-object v1, Ll/c1;->e:[I

    .line 100
    .line 101
    aput-object v1, v0, v6

    .line 102
    .line 103
    invoke-static {p1, v5}, Ll/c1;->c(Landroid/content/Context;I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    aput v1, p2, v6

    .line 108
    .line 109
    sget-object v1, Ll/c1;->f:[I

    .line 110
    .line 111
    aput-object v1, v0, v4

    .line 112
    .line 113
    invoke-static {p1, v2}, Ll/c1;->c(Landroid/content/Context;I)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    aput p1, p2, v4

    .line 118
    .line 119
    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    .line 120
    .line 121
    invoke-direct {p1, v0, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 122
    .line 123
    .line 124
    return-object p1

    .line 125
    :cond_3
    const v0, 0x7f0804ea

    .line 126
    .line 127
    .line 128
    if-ne p2, v0, :cond_4

    .line 129
    .line 130
    const p2, 0x7f040103

    .line 131
    .line 132
    .line 133
    invoke-static {p1, p2}, Ll/c1;->c(Landroid/content/Context;I)I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    invoke-static {p1, p2}, Ll/x;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    :cond_4
    const v0, 0x7f0804e4

    .line 143
    .line 144
    .line 145
    if-ne p2, v0, :cond_5

    .line 146
    .line 147
    invoke-static {p1, v1}, Ll/x;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1

    .line 152
    :cond_5
    const v0, 0x7f0804e9

    .line 153
    .line 154
    .line 155
    if-ne p2, v0, :cond_6

    .line 156
    .line 157
    const p2, 0x7f040101

    .line 158
    .line 159
    .line 160
    invoke-static {p1, p2}, Ll/c1;->c(Landroid/content/Context;I)I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    invoke-static {p1, p2}, Ll/x;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    return-object p1

    .line 169
    :cond_6
    const v0, 0x7f08051f

    .line 170
    .line 171
    .line 172
    if-eq p2, v0, :cond_c

    .line 173
    .line 174
    const v0, 0x7f080520

    .line 175
    .line 176
    .line 177
    if-ne p2, v0, :cond_7

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_7
    iget-object v0, p0, Ll/x;->H:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, [I

    .line 183
    .line 184
    invoke-static {v0, p2}, Ll/x;->d([II)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_8

    .line 189
    .line 190
    const p2, 0x7f040106

    .line 191
    .line 192
    .line 193
    invoke-static {p1, p2}, Ll/c1;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    return-object p1

    .line 198
    :cond_8
    iget-object v0, p0, Ll/x;->K:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, [I

    .line 201
    .line 202
    invoke-static {v0, p2}, Ll/x;->d([II)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_9

    .line 207
    .line 208
    const p2, 0x7f060014

    .line 209
    .line 210
    .line 211
    invoke-static {p1, p2}, LJ6/r;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    return-object p1

    .line 216
    :cond_9
    iget-object v0, p0, Ll/x;->L:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v0, [I

    .line 219
    .line 220
    invoke-static {v0, p2}, Ll/x;->d([II)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_a

    .line 225
    .line 226
    const p2, 0x7f060013

    .line 227
    .line 228
    .line 229
    invoke-static {p1, p2}, LJ6/r;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    return-object p1

    .line 234
    :cond_a
    const v0, 0x7f08051c

    .line 235
    .line 236
    .line 237
    if-ne p2, v0, :cond_b

    .line 238
    .line 239
    const p2, 0x7f060016

    .line 240
    .line 241
    .line 242
    invoke-static {p1, p2}, LJ6/r;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    return-object p1

    .line 247
    :cond_b
    const/4 p1, 0x0

    .line 248
    return-object p1

    .line 249
    :cond_c
    :goto_1
    const p2, 0x7f060017

    .line 250
    .line 251
    .line 252
    invoke-static {p1, p2}, LJ6/r;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    return-object p1
.end method

.method public final k(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/x;->K:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lt0/q;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lt0/q;->f(J)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ll/x;->L:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lt0/q;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Lt0/q;->f(J)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Ll/x;->K:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lt0/q;

    .line 20
    .line 21
    invoke-interface {p1}, Lt0/q;->d()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Ll/x;->L:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lt0/q;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Lt0/q;->d()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Ll/x;->L:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lt0/q;

    .line 42
    .line 43
    iget-object p2, p0, Ll/x;->G:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p2, Ljava/util/HashMap;

    .line 46
    .line 47
    iget-object v0, p0, Ll/x;->H:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-interface {p1, p2, v0}, Lt0/q;->g(Ljava/util/HashMap;Landroid/util/SparseArray;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Ll/x;->K:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lt0/q;

    .line 57
    .line 58
    iget-object p2, p0, Ll/x;->G:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p2, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-interface {p1, p2}, Lt0/q;->a(Ljava/util/HashMap;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Ll/x;->K:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lt0/q;

    .line 69
    .line 70
    iget-object p2, p0, Ll/x;->G:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p2, Ljava/util/HashMap;

    .line 73
    .line 74
    iget-object v0, p0, Ll/x;->H:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-interface {p1, p2, v0}, Lt0/q;->g(Ljava/util/HashMap;Landroid/util/SparseArray;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    iget-object p1, p0, Ll/x;->L:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Lt0/q;

    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    invoke-interface {p1}, Lt0/q;->h()V

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Ll/x;->L:Ljava/lang/Object;

    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ll/x;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lt0/n;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Lt0/n;->c:Ljava/util/TreeSet;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, v0, Lt0/n;->d:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Ll/x;->G:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Ll/x;->J:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Landroid/util/SparseBooleanArray;

    .line 39
    .line 40
    iget v1, v0, Lt0/n;->a:I

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iget-object v2, p0, Ll/x;->K:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lt0/q;

    .line 49
    .line 50
    invoke-interface {v2, v0, p1}, Lt0/q;->b(Lt0/n;Z)V

    .line 51
    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    iget-object p1, p0, Ll/x;->H:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Ll/x;->J:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p1, Landroid/util/SparseBooleanArray;

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Ll/x;->H:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Landroid/util/SparseArray;

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Ll/x;->I:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Landroid/util/SparseBooleanArray;

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_0
    return-void
.end method

.method public final m(LU2/l;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Ll/x;->I:Ljava/lang/Object;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null encodedPayload"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final o()V
    .locals 4

    .line 1
    iget-object v0, p0, Ll/x;->K:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lt0/q;

    .line 4
    .line 5
    iget-object v1, p0, Ll/x;->G:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lt0/q;->e(Ljava/util/HashMap;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Ll/x;->I:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Ll/x;->H:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Landroid/util/SparseArray;

    .line 26
    .line 27
    iget-object v3, p0, Ll/x;->I:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Landroid/util/SparseBooleanArray;

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Ll/x;->I:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Ll/x;->J:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Ll/x;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LZ3/X;

    .line 4
    .line 5
    invoke-interface {v0}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Landroid/app/Application;

    .line 11
    .line 12
    iget-object v0, p0, Ll/x;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, LZ3/X;

    .line 15
    .line 16
    invoke-interface {v0}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, LZ3/b;

    .line 21
    .line 22
    iget-object v0, p0, Ll/x;->I:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, LZ3/X;

    .line 25
    .line 26
    invoke-interface {v0}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v3, v0

    .line 31
    check-cast v3, LZ3/u;

    .line 32
    .line 33
    iget-object v0, p0, Ll/x;->J:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, LZ3/X;

    .line 36
    .line 37
    invoke-interface {v0}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object v4, v0

    .line 42
    check-cast v4, LZ3/i;

    .line 43
    .line 44
    iget-object v0, p0, Ll/x;->K:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, LZ3/X;

    .line 47
    .line 48
    invoke-interface {v0}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v5, v0

    .line 53
    check-cast v5, LZ3/q;

    .line 54
    .line 55
    iget-object v0, p0, Ll/x;->L:Ljava/lang/Object;

    .line 56
    .line 57
    move-object v6, v0

    .line 58
    check-cast v6, LZ3/X;

    .line 59
    .line 60
    new-instance v0, LZ3/l;

    .line 61
    .line 62
    move-object v1, v0

    .line 63
    invoke-direct/range {v1 .. v6}, LZ3/l;-><init>(Landroid/app/Application;LZ3/u;LZ3/i;LZ3/q;LZ3/X;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method
