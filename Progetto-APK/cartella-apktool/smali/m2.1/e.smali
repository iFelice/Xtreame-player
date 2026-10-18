.class public final Lm2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/o;
.implements Lq1/m;
.implements LN/s;
.implements Lcom/google/android/gms/internal/measurement/v;


# instance fields
.field public final synthetic G:I

.field public H:Ljava/lang/Object;

.field public I:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lm2/e;->G:I

    const/16 p2, 0x9

    if-eq p1, p2, :cond_4

    const/16 p2, 0x18

    if-eq p1, p2, :cond_3

    const/16 p2, 0x1b

    if-eq p1, p2, :cond_2

    const/16 p2, 0xc

    if-eq p1, p2, :cond_1

    const/16 p2, 0xd

    if-eq p1, p2, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Lp0/E;

    invoke-direct {p1}, Lp0/E;-><init>()V

    iput-object p1, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 4
    new-instance p1, Lz1/a;

    invoke-direct {p1}, Lz1/a;-><init>()V

    iput-object p1, p0, Lm2/e;->I:Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm2/e;->I:Ljava/lang/Object;

    return-void

    .line 7
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 8
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance p1, LI2/c;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, LI2/c;-><init>(I)V

    iput-object p1, p0, Lm2/e;->I:Ljava/lang/Object;

    return-void

    .line 10
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lm2/e;->I:Ljava/lang/Object;

    return-void

    .line 13
    :cond_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm2/e;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm2/e;->G:I

    iput-object p2, p0, Lm2/e;->H:Ljava/lang/Object;

    iput-object p3, p0, Lm2/e;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LL3/a;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    .line 22
    iput v0, p0, Lm2/e;->G:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p1, LL3/a;->H:Landroid/net/Uri;

    :goto_0
    iput-object p1, p0, Lm2/e;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LX4/b;Lk/d;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x15

    .line 41
    iput v0, p0, Lm2/e;->G:I

    .line 42
    iput-object p1, p0, Lm2/e;->I:Ljava/lang/Object;

    iput-object p2, p0, Lm2/e;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LY/K;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 37
    iput v0, p0, Lm2/e;->G:I

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lm2/e;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lm2/e;->G:I

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    iput-object p1, p0, Lm2/e;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 48
    iput v0, p0, Lm2/e;->G:I

    .line 49
    iput-object p1, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 50
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lm2/e;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lm2/e;->G:I

    .line 30
    iput-object p1, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 31
    new-instance v0, Lm2/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lm2/b;-><init>(Ljava/lang/Object;LP1/x;I)V

    iput-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc4/k1;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 18
    iput v0, p0, Lm2/e;->G:I

    .line 19
    iput-object p1, p0, Lm2/e;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    .line 25
    iput v0, p0, Lm2/e;->G:I

    .line 26
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    iput-object p1, p0, Lm2/e;->I:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    .line 27
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lm2/e;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lm2/e;->G:I

    iput-object p1, p0, Lm2/e;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lz4/d0;[I)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 44
    iput v0, p0, Lm2/e;->G:I

    .line 45
    invoke-static {p1}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    move-result-object p1

    iput-object p1, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 46
    iput-object p2, p0, Lm2/e;->I:Ljava/lang/Object;

    return-void
.end method

.method public static i(Landroid/graphics/ImageDecoder$Source;IILw2/l;)LF2/z;
    .locals 1

    .line 1
    new-instance v0, LE2/c;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, LE2/c;-><init>(IILw2/l;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, LE2/a;->j(Landroid/graphics/ImageDecoder$Source;LE2/c;)Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, LE2/a;->x(Landroid/graphics/drawable/Drawable;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance p1, LF2/z;

    .line 17
    .line 18
    invoke-static {p0}, LE2/a;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 p2, 0x2

    .line 23
    invoke-direct {p1, p0, p2}, LF2/z;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p3, "Received unexpected drawable type for animated image, failing: "

    .line 32
    .line 33
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method


# virtual methods
.method public final A(Lw2/f;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, LF2/w;

    .line 3
    .line 4
    new-instance v2, Ljava/io/FileInputStream;

    .line 5
    .line 6
    iget-object v3, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v3, Lcom/bumptech/glide/load/data/n;

    .line 9
    .line 10
    invoke-virtual {v3}, Lcom/bumptech/glide/load/data/n;->b()Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v3, Lz2/h;

    .line 24
    .line 25
    invoke-direct {v1, v2, v3}, LF2/w;-><init>(Ljava/io/InputStream;Lz2/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    .line 27
    .line 28
    :try_start_1
    invoke-interface {p1, v1}, Lw2/f;->c(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-virtual {v1}, LF2/w;->E()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lcom/bumptech/glide/load/data/n;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/n;->b()Landroid/os/ParcelFileDescriptor;

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    move-object v0, v1

    .line 45
    goto :goto_0

    .line 46
    :catchall_1
    move-exception p1

    .line 47
    :goto_0
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0}, LF2/w;->E()V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lcom/bumptech/glide/load/data/n;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/n;->b()Landroid/os/ParcelFileDescriptor;

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public final B(Landroid/net/Uri;Ls0/k;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LS0/o;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, LS0/o;->B(Landroid/net/Uri;Ls0/k;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, LM0/a;

    .line 10
    .line 11
    iget-object p2, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p2, Ljava/util/List;

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p2, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p2, Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {p1, p2}, LM0/a;->a(Ljava/util/List;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, LM0/a;

    .line 33
    .line 34
    :cond_1
    :goto_0
    return-object p1
.end method

.method public final C(Lm2/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LP1/x;

    .line 4
    .line 5
    invoke-virtual {v0}, LP1/x;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, LP1/x;

    .line 11
    .line 12
    invoke-virtual {v0}, LP1/x;->c()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, LP1/e;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, LP1/e;->u(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, LP1/x;

    .line 25
    .line 26
    invoke-virtual {p1}, LP1/x;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, LP1/x;

    .line 32
    .line 33
    invoke-virtual {p1}, LP1/x;->j()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, LP1/x;

    .line 41
    .line 42
    invoke-virtual {v0}, LP1/x;->j()V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final D(IIII)F
    .locals 17

    .line 1
    sub-int v0, p4, p2

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sub-int v1, p3, p1

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v3, 0x1

    .line 14
    if-le v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    move/from16 v4, p1

    .line 22
    .line 23
    move/from16 v1, p2

    .line 24
    .line 25
    move/from16 v6, p3

    .line 26
    .line 27
    move/from16 v5, p4

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move/from16 v1, p1

    .line 31
    .line 32
    move/from16 v4, p2

    .line 33
    .line 34
    move/from16 v5, p3

    .line 35
    .line 36
    move/from16 v6, p4

    .line 37
    .line 38
    :goto_1
    sub-int v7, v5, v1

    .line 39
    .line 40
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    sub-int v8, v6, v4

    .line 45
    .line 46
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    neg-int v9, v7

    .line 51
    const/4 v10, 0x2

    .line 52
    div-int/2addr v9, v10

    .line 53
    const/4 v11, -0x1

    .line 54
    if-ge v1, v5, :cond_2

    .line 55
    .line 56
    const/4 v12, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/4 v12, -0x1

    .line 59
    :goto_2
    if-ge v4, v6, :cond_3

    .line 60
    .line 61
    const/4 v11, 0x1

    .line 62
    :cond_3
    add-int/2addr v5, v12

    .line 63
    move v13, v1

    .line 64
    move v14, v4

    .line 65
    const/4 v15, 0x0

    .line 66
    :goto_3
    if-eq v13, v5, :cond_b

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    move v2, v14

    .line 71
    goto :goto_4

    .line 72
    :cond_4
    move v2, v13

    .line 73
    :goto_4
    if-eqz v0, :cond_5

    .line 74
    .line 75
    move v10, v13

    .line 76
    goto :goto_5

    .line 77
    :cond_5
    move v10, v14

    .line 78
    :goto_5
    if-ne v15, v3, :cond_6

    .line 79
    .line 80
    move-object/from16 v3, p0

    .line 81
    .line 82
    move/from16 v16, v0

    .line 83
    .line 84
    move/from16 p2, v5

    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    goto :goto_6

    .line 88
    :cond_6
    move-object/from16 v3, p0

    .line 89
    .line 90
    move/from16 v16, v0

    .line 91
    .line 92
    move/from16 p2, v5

    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    :goto_6
    iget-object v5, v3, Lm2/e;->H:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v5, Lw5/b;

    .line 98
    .line 99
    invoke-virtual {v5, v2, v10}, Lw5/b;->b(II)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-ne v0, v2, :cond_8

    .line 104
    .line 105
    const/4 v0, 0x2

    .line 106
    if-ne v15, v0, :cond_7

    .line 107
    .line 108
    invoke-static {v13, v14, v1, v4}, Ld2/v;->i(IIII)F

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    return v0

    .line 113
    :cond_7
    add-int/lit8 v15, v15, 0x1

    .line 114
    .line 115
    :cond_8
    add-int/2addr v9, v8

    .line 116
    if-lez v9, :cond_a

    .line 117
    .line 118
    if-eq v14, v6, :cond_9

    .line 119
    .line 120
    add-int/2addr v14, v11

    .line 121
    sub-int/2addr v9, v7

    .line 122
    goto :goto_8

    .line 123
    :cond_9
    :goto_7
    const/4 v0, 0x2

    .line 124
    goto :goto_9

    .line 125
    :cond_a
    :goto_8
    add-int/2addr v13, v12

    .line 126
    move/from16 v5, p2

    .line 127
    .line 128
    move/from16 v0, v16

    .line 129
    .line 130
    const/4 v3, 0x1

    .line 131
    const/4 v10, 0x2

    .line 132
    goto :goto_3

    .line 133
    :cond_b
    move-object/from16 v3, p0

    .line 134
    .line 135
    move/from16 p2, v5

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :goto_9
    if-ne v15, v0, :cond_c

    .line 139
    .line 140
    move/from16 v5, p2

    .line 141
    .line 142
    invoke-static {v5, v6, v1, v4}, Ld2/v;->i(IIII)F

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    return v0

    .line 147
    :cond_c
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 148
    .line 149
    return v0
.end method

.method public final E(IIII)F
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lm2/e;->D(IIII)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr p3, p1

    .line 6
    sub-int p3, p1, p3

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    .line 11
    if-gez p3, :cond_0

    .line 12
    .line 13
    int-to-float v3, p1

    .line 14
    sub-int p3, p1, p3

    .line 15
    .line 16
    int-to-float p3, p3

    .line 17
    div-float/2addr v3, p3

    .line 18
    const/4 p3, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v3, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v4, v3

    .line 23
    check-cast v4, Lw5/b;

    .line 24
    .line 25
    iget v4, v4, Lw5/b;->G:I

    .line 26
    .line 27
    if-lt p3, v4, :cond_1

    .line 28
    .line 29
    move-object v4, v3

    .line 30
    check-cast v4, Lw5/b;

    .line 31
    .line 32
    iget v4, v4, Lw5/b;->G:I

    .line 33
    .line 34
    add-int/lit8 v4, v4, -0x1

    .line 35
    .line 36
    sub-int/2addr v4, p1

    .line 37
    int-to-float v4, v4

    .line 38
    sub-int/2addr p3, p1

    .line 39
    int-to-float p3, p3

    .line 40
    div-float p3, v4, p3

    .line 41
    .line 42
    check-cast v3, Lw5/b;

    .line 43
    .line 44
    iget v3, v3, Lw5/b;->G:I

    .line 45
    .line 46
    add-int/lit8 v3, v3, -0x1

    .line 47
    .line 48
    move v5, v3

    .line 49
    move v3, p3

    .line 50
    move p3, v5

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 53
    .line 54
    :goto_0
    int-to-float v4, p2

    .line 55
    sub-int/2addr p4, p2

    .line 56
    int-to-float p4, p4

    .line 57
    mul-float p4, p4, v3

    .line 58
    .line 59
    sub-float p4, v4, p4

    .line 60
    .line 61
    float-to-int p4, p4

    .line 62
    if-gez p4, :cond_2

    .line 63
    .line 64
    sub-int p4, p2, p4

    .line 65
    .line 66
    int-to-float p4, p4

    .line 67
    div-float/2addr v4, p4

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object v1, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 70
    .line 71
    move-object v3, v1

    .line 72
    check-cast v3, Lw5/b;

    .line 73
    .line 74
    iget v3, v3, Lw5/b;->H:I

    .line 75
    .line 76
    if-lt p4, v3, :cond_3

    .line 77
    .line 78
    move-object v3, v1

    .line 79
    check-cast v3, Lw5/b;

    .line 80
    .line 81
    iget v3, v3, Lw5/b;->H:I

    .line 82
    .line 83
    add-int/lit8 v3, v3, -0x1

    .line 84
    .line 85
    sub-int/2addr v3, p2

    .line 86
    int-to-float v3, v3

    .line 87
    sub-int/2addr p4, p2

    .line 88
    int-to-float p4, p4

    .line 89
    div-float v4, v3, p4

    .line 90
    .line 91
    check-cast v1, Lw5/b;

    .line 92
    .line 93
    iget p4, v1, Lw5/b;->H:I

    .line 94
    .line 95
    add-int/lit8 v1, p4, -0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    move v1, p4

    .line 99
    const/high16 v4, 0x3f800000    # 1.0f

    .line 100
    .line 101
    :goto_1
    int-to-float p4, p1

    .line 102
    sub-int/2addr p3, p1

    .line 103
    int-to-float p3, p3

    .line 104
    mul-float p3, p3, v4

    .line 105
    .line 106
    add-float/2addr p3, p4

    .line 107
    float-to-int p3, p3

    .line 108
    invoke-virtual {p0, p1, p2, p3, v1}, Lm2/e;->D(IIII)F

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    add-float/2addr p1, v0

    .line 113
    sub-float/2addr p1, v2

    .line 114
    return p1
.end method

.method public final F(ZZ)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/net/wifi/WifiManager$WifiLock;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "wifi"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string p1, "WifiLockManager"

    .line 28
    .line 29
    const-string p2, "WifiManager is null, therefore not creating the WifiLock."

    .line 30
    .line 31
    invoke-static {p1, p2}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    const/4 v1, 0x3

    .line 36
    const-string v2, "ExoPlayer:WifiLockManager"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 49
    .line 50
    move-object v1, v0

    .line 51
    check-cast v1, Landroid/net/wifi/WifiManager$WifiLock;

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    if-eqz p1, :cond_3

    .line 57
    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    check-cast v0, Landroid/net/wifi/WifiManager$WifiLock;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    check-cast v0, Landroid/net/wifi/WifiManager$WifiLock;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final synthetic a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b([BIILq1/l;Lp0/j;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    iget-object v2, v1, Lm2/e;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lp0/E;

    .line 8
    .line 9
    add-int v3, v0, p3

    .line 10
    .line 11
    move-object/from16 v4, p1

    .line 12
    .line 13
    invoke-virtual {v2, v3, v4}, Lp0/E;->J(I[B)V

    .line 14
    .line 15
    .line 16
    iget-object v2, v1, Lm2/e;->H:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lp0/E;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Lp0/E;->L(I)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v2, v1, Lm2/e;->H:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lp0/E;

    .line 31
    .line 32
    invoke-static {v2}, Lz1/i;->d(Lp0/E;)V
    :try_end_0
    .catch Lm0/P; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v2, v1, Lm2/e;->H:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Lp0/E;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lp0/E;->m(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_1
    iget-object v3, v1, Lm2/e;->H:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v3, Lp0/E;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    const/4 v5, -0x1

    .line 66
    const/4 v6, -0x1

    .line 67
    const/4 v7, 0x0

    .line 68
    :goto_2
    const/4 v8, 0x2

    .line 69
    const/4 v9, 0x1

    .line 70
    if-ne v6, v5, :cond_5

    .line 71
    .line 72
    iget v7, v3, Lp0/E;->b:I

    .line 73
    .line 74
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 75
    .line 76
    invoke-virtual {v3, v6}, Lp0/E;->m(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    if-nez v6, :cond_2

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const-string v11, "STYLE"

    .line 85
    .line 86
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    if-eqz v11, :cond_3

    .line 91
    .line 92
    const/4 v6, 0x2

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    const-string v8, "NOTE"

    .line 95
    .line 96
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_4

    .line 101
    .line 102
    const/4 v6, 0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    const/4 v6, 0x3

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    invoke-virtual {v3, v7}, Lp0/E;->L(I)V

    .line 107
    .line 108
    .line 109
    if-eqz v6, :cond_3a

    .line 110
    .line 111
    if-ne v6, v9, :cond_6

    .line 112
    .line 113
    iget-object v3, v1, Lm2/e;->H:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v3, Lp0/E;

    .line 116
    .line 117
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Lp0/E;->m(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-nez v4, :cond_1

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    const/4 v3, 0x0

    .line 134
    if-ne v6, v8, :cond_35

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-eqz v6, :cond_34

    .line 141
    .line 142
    iget-object v6, v1, Lm2/e;->H:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v6, Lp0/E;

    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 150
    .line 151
    invoke-virtual {v6, v7}, Lp0/E;->m(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    iget-object v6, v1, Lm2/e;->I:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v6, Lz1/a;

    .line 157
    .line 158
    iget-object v7, v1, Lm2/e;->H:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v7, Lp0/E;

    .line 161
    .line 162
    iget-object v11, v6, Lz1/a;->b:Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 165
    .line 166
    .line 167
    iget v12, v7, Lp0/E;->b:I

    .line 168
    .line 169
    :cond_7
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 170
    .line 171
    invoke-virtual {v7, v13}, Lp0/E;->m(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v13

    .line 175
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    if-eqz v13, :cond_7

    .line 180
    .line 181
    iget-object v13, v7, Lp0/E;->a:[B

    .line 182
    .line 183
    iget v7, v7, Lp0/E;->b:I

    .line 184
    .line 185
    iget-object v6, v6, Lz1/a;->a:Lp0/E;

    .line 186
    .line 187
    invoke-virtual {v6, v7, v13}, Lp0/E;->J(I[B)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v12}, Lp0/E;->L(I)V

    .line 191
    .line 192
    .line 193
    new-instance v7, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    :goto_4
    invoke-static {v6}, Lz1/a;->c(Lp0/E;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6}, Lp0/E;->a()I

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    const-string v13, ""

    .line 206
    .line 207
    const-string v14, "{"

    .line 208
    .line 209
    const/4 v15, 0x5

    .line 210
    if-ge v12, v15, :cond_8

    .line 211
    .line 212
    :goto_5
    move-object v10, v3

    .line 213
    goto/16 :goto_9

    .line 214
    .line 215
    :cond_8
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 216
    .line 217
    invoke-virtual {v6, v15, v12}, Lp0/E;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    const-string v15, "::cue"

    .line 222
    .line 223
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    if-nez v12, :cond_9

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_9
    iget v12, v6, Lp0/E;->b:I

    .line 231
    .line 232
    invoke-static {v6, v11}, Lz1/a;->b(Lp0/E;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v15

    .line 236
    if-nez v15, :cond_a

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_a
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v16

    .line 243
    if-eqz v16, :cond_b

    .line 244
    .line 245
    invoke-virtual {v6, v12}, Lp0/E;->L(I)V

    .line 246
    .line 247
    .line 248
    move-object v10, v13

    .line 249
    goto :goto_9

    .line 250
    :cond_b
    const-string v12, "("

    .line 251
    .line 252
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v12

    .line 256
    if-eqz v12, :cond_e

    .line 257
    .line 258
    iget v12, v6, Lp0/E;->b:I

    .line 259
    .line 260
    iget v15, v6, Lp0/E;->c:I

    .line 261
    .line 262
    const/16 v16, 0x0

    .line 263
    .line 264
    :goto_6
    if-ge v12, v15, :cond_d

    .line 265
    .line 266
    if-nez v16, :cond_d

    .line 267
    .line 268
    iget-object v10, v6, Lp0/E;->a:[B

    .line 269
    .line 270
    add-int/lit8 v16, v12, 0x1

    .line 271
    .line 272
    aget-byte v10, v10, v12

    .line 273
    .line 274
    int-to-char v10, v10

    .line 275
    const/16 v12, 0x29

    .line 276
    .line 277
    if-ne v10, v12, :cond_c

    .line 278
    .line 279
    const/4 v10, 0x1

    .line 280
    goto :goto_7

    .line 281
    :cond_c
    const/4 v10, 0x0

    .line 282
    :goto_7
    move/from16 v12, v16

    .line 283
    .line 284
    move/from16 v16, v10

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_d
    add-int/lit8 v12, v12, -0x1

    .line 288
    .line 289
    iget v10, v6, Lp0/E;->b:I

    .line 290
    .line 291
    sub-int/2addr v12, v10

    .line 292
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 293
    .line 294
    invoke-virtual {v6, v12, v10}, Lp0/E;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v10

    .line 298
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v10

    .line 302
    goto :goto_8

    .line 303
    :cond_e
    move-object v10, v3

    .line 304
    :goto_8
    invoke-static {v6, v11}, Lz1/a;->b(Lp0/E;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v12

    .line 308
    const-string v15, ")"

    .line 309
    .line 310
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v12

    .line 314
    if-nez v12, :cond_f

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_f
    :goto_9
    if-eqz v10, :cond_33

    .line 318
    .line 319
    invoke-static {v6, v11}, Lz1/a;->b(Lp0/E;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v12

    .line 323
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v12

    .line 327
    if-nez v12, :cond_10

    .line 328
    .line 329
    goto/16 :goto_1c

    .line 330
    .line 331
    :cond_10
    new-instance v12, Lz1/b;

    .line 332
    .line 333
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 334
    .line 335
    .line 336
    iput-object v13, v12, Lz1/b;->a:Ljava/lang/String;

    .line 337
    .line 338
    iput-object v13, v12, Lz1/b;->b:Ljava/lang/String;

    .line 339
    .line 340
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 341
    .line 342
    .line 343
    move-result-object v14

    .line 344
    iput-object v14, v12, Lz1/b;->c:Ljava/util/Set;

    .line 345
    .line 346
    iput-object v13, v12, Lz1/b;->d:Ljava/lang/String;

    .line 347
    .line 348
    iput-object v3, v12, Lz1/b;->e:Ljava/lang/String;

    .line 349
    .line 350
    iput-boolean v4, v12, Lz1/b;->g:Z

    .line 351
    .line 352
    iput-boolean v4, v12, Lz1/b;->i:Z

    .line 353
    .line 354
    iput v5, v12, Lz1/b;->j:I

    .line 355
    .line 356
    iput v5, v12, Lz1/b;->k:I

    .line 357
    .line 358
    iput v5, v12, Lz1/b;->l:I

    .line 359
    .line 360
    iput v5, v12, Lz1/b;->m:I

    .line 361
    .line 362
    iput v5, v12, Lz1/b;->n:I

    .line 363
    .line 364
    iput v5, v12, Lz1/b;->p:I

    .line 365
    .line 366
    iput-boolean v4, v12, Lz1/b;->q:Z

    .line 367
    .line 368
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result v13

    .line 372
    if-eqz v13, :cond_11

    .line 373
    .line 374
    goto :goto_c

    .line 375
    :cond_11
    const/16 v13, 0x5b

    .line 376
    .line 377
    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(I)I

    .line 378
    .line 379
    .line 380
    move-result v13

    .line 381
    if-eq v13, v5, :cond_13

    .line 382
    .line 383
    sget-object v14, Lz1/a;->c:Ljava/util/regex/Pattern;

    .line 384
    .line 385
    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v15

    .line 389
    invoke-virtual {v14, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 390
    .line 391
    .line 392
    move-result-object v14

    .line 393
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    .line 394
    .line 395
    .line 396
    move-result v15

    .line 397
    if-eqz v15, :cond_12

    .line 398
    .line 399
    invoke-virtual {v14, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v14

    .line 403
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    .line 405
    .line 406
    iput-object v14, v12, Lz1/b;->d:Ljava/lang/String;

    .line 407
    .line 408
    :cond_12
    invoke-virtual {v10, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v10

    .line 412
    :cond_13
    sget-object v13, Lp0/M;->a:Ljava/lang/String;

    .line 413
    .line 414
    const-string v13, "\\."

    .line 415
    .line 416
    invoke-virtual {v10, v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    aget-object v13, v10, v4

    .line 421
    .line 422
    const/16 v14, 0x23

    .line 423
    .line 424
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    .line 425
    .line 426
    .line 427
    move-result v14

    .line 428
    if-eq v14, v5, :cond_14

    .line 429
    .line 430
    invoke-virtual {v13, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v15

    .line 434
    iput-object v15, v12, Lz1/b;->b:Ljava/lang/String;

    .line 435
    .line 436
    add-int/lit8 v14, v14, 0x1

    .line 437
    .line 438
    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v13

    .line 442
    iput-object v13, v12, Lz1/b;->a:Ljava/lang/String;

    .line 443
    .line 444
    goto :goto_a

    .line 445
    :cond_14
    iput-object v13, v12, Lz1/b;->b:Ljava/lang/String;

    .line 446
    .line 447
    :goto_a
    array-length v13, v10

    .line 448
    if-le v13, v9, :cond_16

    .line 449
    .line 450
    array-length v13, v10

    .line 451
    array-length v14, v10

    .line 452
    if-gt v13, v14, :cond_15

    .line 453
    .line 454
    const/4 v14, 0x1

    .line 455
    goto :goto_b

    .line 456
    :cond_15
    const/4 v14, 0x0

    .line 457
    :goto_b
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 458
    .line 459
    .line 460
    invoke-static {v10, v9, v13}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v10

    .line 464
    check-cast v10, [Ljava/lang/String;

    .line 465
    .line 466
    new-instance v13, Ljava/util/HashSet;

    .line 467
    .line 468
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 469
    .line 470
    .line 471
    move-result-object v10

    .line 472
    invoke-direct {v13, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 473
    .line 474
    .line 475
    iput-object v13, v12, Lz1/b;->c:Ljava/util/Set;

    .line 476
    .line 477
    :cond_16
    :goto_c
    move-object v13, v3

    .line 478
    const/4 v10, 0x0

    .line 479
    :goto_d
    const-string v14, "}"

    .line 480
    .line 481
    if-nez v10, :cond_31

    .line 482
    .line 483
    iget v10, v6, Lp0/E;->b:I

    .line 484
    .line 485
    invoke-static {v6, v11}, Lz1/a;->b(Lp0/E;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v13

    .line 489
    if-eqz v13, :cond_18

    .line 490
    .line 491
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v15

    .line 495
    if-eqz v15, :cond_17

    .line 496
    .line 497
    goto :goto_e

    .line 498
    :cond_17
    const/4 v15, 0x0

    .line 499
    goto :goto_f

    .line 500
    :cond_18
    :goto_e
    const/4 v15, 0x1

    .line 501
    :goto_f
    if-nez v15, :cond_30

    .line 502
    .line 503
    invoke-virtual {v6, v10}, Lp0/E;->L(I)V

    .line 504
    .line 505
    .line 506
    invoke-static {v6}, Lz1/a;->c(Lp0/E;)V

    .line 507
    .line 508
    .line 509
    invoke-static {v6, v11}, Lz1/a;->a(Lp0/E;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v10

    .line 513
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 514
    .line 515
    .line 516
    move-result v16

    .line 517
    if-eqz v16, :cond_19

    .line 518
    .line 519
    goto/16 :goto_1a

    .line 520
    .line 521
    :cond_19
    const-string v4, ":"

    .line 522
    .line 523
    invoke-static {v6, v11}, Lz1/a;->b(Lp0/E;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v5

    .line 527
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    if-nez v4, :cond_1a

    .line 532
    .line 533
    goto/16 :goto_1a

    .line 534
    .line 535
    :cond_1a
    invoke-static {v6}, Lz1/a;->c(Lp0/E;)V

    .line 536
    .line 537
    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    .line 539
    .line 540
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .line 542
    .line 543
    const/4 v5, 0x0

    .line 544
    :goto_10
    const-string v3, ";"

    .line 545
    .line 546
    if-nez v5, :cond_1e

    .line 547
    .line 548
    iget v8, v6, Lp0/E;->b:I

    .line 549
    .line 550
    invoke-static {v6, v11}, Lz1/a;->b(Lp0/E;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v9

    .line 554
    if-nez v9, :cond_1b

    .line 555
    .line 556
    const/4 v4, 0x0

    .line 557
    goto :goto_13

    .line 558
    :cond_1b
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v17

    .line 562
    if-nez v17, :cond_1d

    .line 563
    .line 564
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v3

    .line 568
    if-eqz v3, :cond_1c

    .line 569
    .line 570
    goto :goto_12

    .line 571
    :cond_1c
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    :goto_11
    const/4 v8, 0x2

    .line 575
    const/4 v9, 0x1

    .line 576
    goto :goto_10

    .line 577
    :cond_1d
    :goto_12
    invoke-virtual {v6, v8}, Lp0/E;->L(I)V

    .line 578
    .line 579
    .line 580
    const/4 v5, 0x1

    .line 581
    goto :goto_11

    .line 582
    :cond_1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    :goto_13
    if-eqz v4, :cond_30

    .line 587
    .line 588
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 589
    .line 590
    .line 591
    move-result v5

    .line 592
    if-eqz v5, :cond_1f

    .line 593
    .line 594
    goto/16 :goto_1a

    .line 595
    .line 596
    :cond_1f
    iget v5, v6, Lp0/E;->b:I

    .line 597
    .line 598
    invoke-static {v6, v11}, Lz1/a;->b(Lp0/E;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v8

    .line 602
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    if-eqz v3, :cond_20

    .line 607
    .line 608
    goto :goto_14

    .line 609
    :cond_20
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v3

    .line 613
    if-eqz v3, :cond_30

    .line 614
    .line 615
    invoke-virtual {v6, v5}, Lp0/E;->L(I)V

    .line 616
    .line 617
    .line 618
    :goto_14
    const-string v3, "color"

    .line 619
    .line 620
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    move-result v3

    .line 624
    if-eqz v3, :cond_21

    .line 625
    .line 626
    const/4 v3, 0x1

    .line 627
    invoke-static {v4, v3}, Lp0/h;->a(Ljava/lang/String;Z)I

    .line 628
    .line 629
    .line 630
    move-result v4

    .line 631
    iput v4, v12, Lz1/b;->f:I

    .line 632
    .line 633
    iput-boolean v3, v12, Lz1/b;->g:Z

    .line 634
    .line 635
    goto/16 :goto_1a

    .line 636
    .line 637
    :cond_21
    const/4 v3, 0x1

    .line 638
    const-string v5, "background-color"

    .line 639
    .line 640
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    move-result v5

    .line 644
    if-eqz v5, :cond_22

    .line 645
    .line 646
    invoke-static {v4, v3}, Lp0/h;->a(Ljava/lang/String;Z)I

    .line 647
    .line 648
    .line 649
    move-result v4

    .line 650
    iput v4, v12, Lz1/b;->h:I

    .line 651
    .line 652
    iput-boolean v3, v12, Lz1/b;->i:Z

    .line 653
    .line 654
    goto/16 :goto_1a

    .line 655
    .line 656
    :cond_22
    const-string v5, "ruby-position"

    .line 657
    .line 658
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v5

    .line 662
    if-eqz v5, :cond_24

    .line 663
    .line 664
    const-string v5, "over"

    .line 665
    .line 666
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    move-result v5

    .line 670
    if-eqz v5, :cond_23

    .line 671
    .line 672
    iput v3, v12, Lz1/b;->p:I

    .line 673
    .line 674
    goto/16 :goto_1a

    .line 675
    .line 676
    :cond_23
    const-string v3, "under"

    .line 677
    .line 678
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v3

    .line 682
    if-eqz v3, :cond_30

    .line 683
    .line 684
    const/4 v3, 0x2

    .line 685
    iput v3, v12, Lz1/b;->p:I

    .line 686
    .line 687
    goto/16 :goto_1a

    .line 688
    .line 689
    :cond_24
    const-string v3, "text-combine-upright"

    .line 690
    .line 691
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    move-result v3

    .line 695
    if-eqz v3, :cond_27

    .line 696
    .line 697
    const-string v3, "all"

    .line 698
    .line 699
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result v3

    .line 703
    if-nez v3, :cond_26

    .line 704
    .line 705
    const-string v3, "digits"

    .line 706
    .line 707
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 708
    .line 709
    .line 710
    move-result v3

    .line 711
    if-eqz v3, :cond_25

    .line 712
    .line 713
    goto :goto_15

    .line 714
    :cond_25
    const/4 v3, 0x0

    .line 715
    goto :goto_16

    .line 716
    :cond_26
    :goto_15
    const/4 v3, 0x1

    .line 717
    :goto_16
    iput-boolean v3, v12, Lz1/b;->q:Z

    .line 718
    .line 719
    goto/16 :goto_1a

    .line 720
    .line 721
    :cond_27
    const-string v3, "text-decoration"

    .line 722
    .line 723
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    move-result v3

    .line 727
    if-eqz v3, :cond_28

    .line 728
    .line 729
    const-string v3, "underline"

    .line 730
    .line 731
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result v3

    .line 735
    if-eqz v3, :cond_30

    .line 736
    .line 737
    const/4 v3, 0x1

    .line 738
    iput v3, v12, Lz1/b;->k:I

    .line 739
    .line 740
    goto/16 :goto_1a

    .line 741
    .line 742
    :cond_28
    const-string v3, "font-family"

    .line 743
    .line 744
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    move-result v3

    .line 748
    if-eqz v3, :cond_29

    .line 749
    .line 750
    invoke-static {v4}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v3

    .line 754
    iput-object v3, v12, Lz1/b;->e:Ljava/lang/String;

    .line 755
    .line 756
    goto/16 :goto_1a

    .line 757
    .line 758
    :cond_29
    const-string v3, "font-weight"

    .line 759
    .line 760
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 761
    .line 762
    .line 763
    move-result v3

    .line 764
    if-eqz v3, :cond_2a

    .line 765
    .line 766
    const-string v3, "bold"

    .line 767
    .line 768
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v3

    .line 772
    if-eqz v3, :cond_30

    .line 773
    .line 774
    const/4 v3, 0x1

    .line 775
    iput v3, v12, Lz1/b;->l:I

    .line 776
    .line 777
    goto/16 :goto_1a

    .line 778
    .line 779
    :cond_2a
    const/4 v3, 0x1

    .line 780
    const-string v5, "font-style"

    .line 781
    .line 782
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 783
    .line 784
    .line 785
    move-result v5

    .line 786
    if-eqz v5, :cond_2b

    .line 787
    .line 788
    const-string v5, "italic"

    .line 789
    .line 790
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    move-result v4

    .line 794
    if-eqz v4, :cond_30

    .line 795
    .line 796
    iput v3, v12, Lz1/b;->m:I

    .line 797
    .line 798
    goto/16 :goto_1a

    .line 799
    .line 800
    :cond_2b
    const-string v3, "font-size"

    .line 801
    .line 802
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 803
    .line 804
    .line 805
    move-result v3

    .line 806
    if-eqz v3, :cond_30

    .line 807
    .line 808
    invoke-static {v4}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v3

    .line 812
    sget-object v5, Lz1/a;->d:Ljava/util/regex/Pattern;

    .line 813
    .line 814
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 815
    .line 816
    .line 817
    move-result-object v3

    .line 818
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 819
    .line 820
    .line 821
    move-result v5

    .line 822
    if-nez v5, :cond_2c

    .line 823
    .line 824
    new-instance v3, Ljava/lang/StringBuilder;

    .line 825
    .line 826
    const-string v5, "Invalid font-size: \'"

    .line 827
    .line 828
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    const-string v4, "\'."

    .line 835
    .line 836
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v3

    .line 843
    const-string v4, "WebvttCssParser"

    .line 844
    .line 845
    invoke-static {v4, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    goto :goto_1a

    .line 849
    :cond_2c
    const/4 v4, 0x2

    .line 850
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v5

    .line 854
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 858
    .line 859
    .line 860
    move-result v4

    .line 861
    sparse-switch v4, :sswitch_data_0

    .line 862
    .line 863
    .line 864
    :goto_17
    const/4 v4, -0x1

    .line 865
    goto :goto_18

    .line 866
    :sswitch_0
    const-string v4, "px"

    .line 867
    .line 868
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 869
    .line 870
    .line 871
    move-result v4

    .line 872
    if-nez v4, :cond_2d

    .line 873
    .line 874
    goto :goto_17

    .line 875
    :cond_2d
    const/4 v4, 0x2

    .line 876
    goto :goto_18

    .line 877
    :sswitch_1
    const-string v4, "em"

    .line 878
    .line 879
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    move-result v4

    .line 883
    if-nez v4, :cond_2e

    .line 884
    .line 885
    goto :goto_17

    .line 886
    :cond_2e
    const/4 v4, 0x1

    .line 887
    goto :goto_18

    .line 888
    :sswitch_2
    const-string v4, "%"

    .line 889
    .line 890
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 891
    .line 892
    .line 893
    move-result v4

    .line 894
    if-nez v4, :cond_2f

    .line 895
    .line 896
    goto :goto_17

    .line 897
    :cond_2f
    const/4 v4, 0x0

    .line 898
    :goto_18
    packed-switch v4, :pswitch_data_0

    .line 899
    .line 900
    .line 901
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 902
    .line 903
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 904
    .line 905
    .line 906
    throw v0

    .line 907
    :pswitch_0
    const/4 v4, 0x1

    .line 908
    iput v4, v12, Lz1/b;->n:I

    .line 909
    .line 910
    const/4 v5, 0x2

    .line 911
    goto :goto_19

    .line 912
    :pswitch_1
    const/4 v4, 0x1

    .line 913
    const/4 v5, 0x2

    .line 914
    iput v5, v12, Lz1/b;->n:I

    .line 915
    .line 916
    goto :goto_19

    .line 917
    :pswitch_2
    const/4 v4, 0x1

    .line 918
    const/4 v5, 0x2

    .line 919
    const/4 v8, 0x3

    .line 920
    iput v8, v12, Lz1/b;->n:I

    .line 921
    .line 922
    :goto_19
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v3

    .line 926
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 927
    .line 928
    .line 929
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 930
    .line 931
    .line 932
    move-result v3

    .line 933
    iput v3, v12, Lz1/b;->o:F

    .line 934
    .line 935
    goto :goto_1b

    .line 936
    :cond_30
    :goto_1a
    const/4 v4, 0x1

    .line 937
    const/4 v5, 0x2

    .line 938
    :goto_1b
    move v10, v15

    .line 939
    const/4 v3, 0x0

    .line 940
    const/4 v4, 0x0

    .line 941
    const/4 v5, -0x1

    .line 942
    const/4 v8, 0x2

    .line 943
    const/4 v9, 0x1

    .line 944
    goto/16 :goto_d

    .line 945
    .line 946
    :cond_31
    const/4 v4, 0x1

    .line 947
    const/4 v5, 0x2

    .line 948
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 949
    .line 950
    .line 951
    move-result v3

    .line 952
    if-eqz v3, :cond_32

    .line 953
    .line 954
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    .line 956
    .line 957
    :cond_32
    const/4 v3, 0x0

    .line 958
    const/4 v4, 0x0

    .line 959
    const/4 v5, -0x1

    .line 960
    const/4 v8, 0x2

    .line 961
    const/4 v9, 0x1

    .line 962
    goto/16 :goto_4

    .line 963
    .line 964
    :cond_33
    :goto_1c
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 965
    .line 966
    .line 967
    goto/16 :goto_1

    .line 968
    .line 969
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 970
    .line 971
    const-string v2, "A style block was found after the first cue."

    .line 972
    .line 973
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 974
    .line 975
    .line 976
    throw v0

    .line 977
    :cond_35
    const/4 v3, 0x3

    .line 978
    if-ne v6, v3, :cond_1

    .line 979
    .line 980
    iget-object v3, v1, Lm2/e;->H:Ljava/lang/Object;

    .line 981
    .line 982
    check-cast v3, Lp0/E;

    .line 983
    .line 984
    sget-object v4, Lz1/h;->a:Ljava/util/regex/Pattern;

    .line 985
    .line 986
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 987
    .line 988
    .line 989
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 990
    .line 991
    invoke-virtual {v3, v4}, Lp0/E;->m(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v5

    .line 995
    if-nez v5, :cond_36

    .line 996
    .line 997
    const/4 v3, 0x0

    .line 998
    goto :goto_1d

    .line 999
    :cond_36
    sget-object v6, Lz1/h;->a:Ljava/util/regex/Pattern;

    .line 1000
    .line 1001
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v7

    .line 1005
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    .line 1006
    .line 1007
    .line 1008
    move-result v8

    .line 1009
    if-eqz v8, :cond_37

    .line 1010
    .line 1011
    const/4 v8, 0x0

    .line 1012
    invoke-static {v8, v7, v3, v0}, Lz1/h;->d(Ljava/lang/String;Ljava/util/regex/Matcher;Lp0/E;Ljava/util/ArrayList;)Lz1/c;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v3

    .line 1016
    goto :goto_1d

    .line 1017
    :cond_37
    const/4 v8, 0x0

    .line 1018
    invoke-virtual {v3, v4}, Lp0/E;->m(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v4

    .line 1022
    if-nez v4, :cond_39

    .line 1023
    .line 1024
    :cond_38
    move-object v3, v8

    .line 1025
    goto :goto_1d

    .line 1026
    :cond_39
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v4

    .line 1030
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 1031
    .line 1032
    .line 1033
    move-result v6

    .line 1034
    if-eqz v6, :cond_38

    .line 1035
    .line 1036
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v5

    .line 1040
    invoke-static {v5, v4, v3, v0}, Lz1/h;->d(Ljava/lang/String;Ljava/util/regex/Matcher;Lp0/E;Ljava/util/ArrayList;)Lz1/c;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v3

    .line 1044
    :goto_1d
    if-eqz v3, :cond_1

    .line 1045
    .line 1046
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    .line 1048
    .line 1049
    goto/16 :goto_1

    .line 1050
    .line 1051
    :cond_3a
    new-instance v0, Lz1/j;

    .line 1052
    .line 1053
    invoke-direct {v0, v2}, Lz1/j;-><init>(Ljava/util/ArrayList;)V

    .line 1054
    .line 1055
    .line 1056
    move-object/from16 v2, p4

    .line 1057
    .line 1058
    move-object/from16 v3, p5

    .line 1059
    .line 1060
    invoke-static {v0, v2, v3}, Lcom/bumptech/glide/c;->v(Lq1/d;Lq1/l;Lp0/j;)V

    .line 1061
    .line 1062
    .line 1063
    return-void

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1066
    .line 1067
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 1068
    .line 1069
    .line 1070
    throw v2

    .line 1071
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic c(I[BI)Lq1/d;
    .locals 0

    .line 1
    invoke-static {p0, p2, p1, p3}, Lcom/google/protobuf/U2;->b(Lq1/m;[BII)Lq1/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "="

    .line 6
    .line 7
    invoke-static {p2, v0, p1}, Lcom/google/protobuf/U2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p2, Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/measurement/n;)Lm2/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm2/i;

    .line 4
    .line 5
    iget-object v1, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lm2/i;->z(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final f(Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p2, Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final g()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final h(LM5/c;LM5/c;)F
    .locals 4

    .line 1
    iget v0, p1, Lq5/o;->a:F

    .line 2
    .line 3
    float-to-int v0, v0

    .line 4
    iget v1, p1, Lq5/o;->b:F

    .line 5
    .line 6
    float-to-int v1, v1

    .line 7
    iget v2, p2, Lq5/o;->a:F

    .line 8
    .line 9
    float-to-int v2, v2

    .line 10
    iget v3, p2, Lq5/o;->b:F

    .line 11
    .line 12
    float-to-int v3, v3

    .line 13
    invoke-virtual {p0, v0, v1, v2, v3}, Lm2/e;->E(IIII)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget p2, p2, Lq5/o;->a:F

    .line 18
    .line 19
    float-to-int p2, p2

    .line 20
    iget p1, p1, Lq5/o;->a:F

    .line 21
    .line 22
    float-to-int p1, p1

    .line 23
    invoke-virtual {p0, p2, v3, p1, v1}, Lm2/e;->E(IIII)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const/high16 v1, 0x40e00000    # 7.0f

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    div-float/2addr p1, v1

    .line 36
    return p1

    .line 37
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    div-float/2addr v0, v1

    .line 44
    return v0

    .line 45
    :cond_1
    add-float/2addr v0, p1

    .line 46
    const/high16 p1, 0x41600000    # 14.0f

    .line 47
    .line 48
    div-float/2addr v0, p1

    .line 49
    return v0
.end method

.method public final j(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/K;

    .line 4
    .line 5
    iget-object v0, v0, LY/K;->w:LY/s;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, LY/s;->n()LY/K;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, LY/K;->m:Lm2/e;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lm2/e;->j(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    throw v0

    .line 45
    :cond_2
    return-void
.end method

.method public final k(Landroid/view/View;LN/i0;)LN/i0;
    .locals 5

    .line 1
    invoke-static {p1, p2}, LN/N;->j(Landroid/view/View;LN/i0;)LN/i0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p1, LN/i0;->a:LN/h0;

    .line 6
    .line 7
    invoke-virtual {p2}, LN/h0;->i()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object p2, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p2, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {p1}, LN/i0;->b()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 23
    .line 24
    invoke-virtual {p1}, LN/i0;->d()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    invoke-virtual {p1}, LN/i0;->c()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 35
    .line 36
    invoke-virtual {p1}, LN/i0;->a()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 41
    .line 42
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x0

    .line 51
    :goto_0
    if-ge v1, v0, :cond_1

    .line 52
    .line 53
    iget-object v2, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2, p1}, LN/N;->b(Landroid/view/View;LN/i0;)LN/i0;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, LN/i0;->b()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iget v4, p2, Landroid/graphics/Rect;->left:I

    .line 70
    .line 71
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 76
    .line 77
    invoke-virtual {v2}, LN/i0;->d()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 82
    .line 83
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 88
    .line 89
    invoke-virtual {v2}, LN/i0;->c()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 94
    .line 95
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 100
    .line 101
    invoke-virtual {v2}, LN/i0;->a()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 106
    .line 107
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 112
    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 117
    .line 118
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 119
    .line 120
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 121
    .line 122
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 123
    .line 124
    invoke-virtual {p1, v0, v1, v2, p2}, LN/i0;->f(IIII)LN/i0;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    return-object p1
.end method

.method public final l(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/K;

    .line 4
    .line 5
    iget-object v1, v0, LY/K;->u:LY/u;

    .line 6
    .line 7
    iget-object v1, v1, LY/u;->N:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v0, v0, LY/K;->w:LY/s;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, LY/s;->n()LY/K;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    iget-object v0, v0, LY/K;->m:Lm2/e;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lm2/e;->l(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    throw v0

    .line 49
    :cond_2
    return-void
.end method

.method public final m(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/K;

    .line 4
    .line 5
    iget-object v0, v0, LY/K;->w:LY/s;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, LY/s;->n()LY/K;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, LY/K;->m:Lm2/e;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lm2/e;->m(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    throw v0

    .line 45
    :cond_2
    return-void
.end method

.method public final n(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/K;

    .line 4
    .line 5
    iget-object v0, v0, LY/K;->w:LY/s;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, LY/s;->n()LY/K;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, LY/K;->m:Lm2/e;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lm2/e;->n(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    throw v0

    .line 45
    :cond_2
    return-void
.end method

.method public final o(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/K;

    .line 4
    .line 5
    iget-object v0, v0, LY/K;->w:LY/s;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, LY/s;->n()LY/K;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, LY/K;->m:Lm2/e;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lm2/e;->o(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    throw v0

    .line 45
    :cond_2
    return-void
.end method

.method public final p(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/K;

    .line 4
    .line 5
    iget-object v0, v0, LY/K;->w:LY/s;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, LY/s;->n()LY/K;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, LY/K;->m:Lm2/e;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lm2/e;->p(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    throw v0

    .line 45
    :cond_2
    return-void
.end method

.method public final q(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/K;

    .line 4
    .line 5
    iget-object v1, v0, LY/K;->u:LY/u;

    .line 6
    .line 7
    iget-object v1, v1, LY/u;->N:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v0, v0, LY/K;->w:LY/s;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, LY/s;->n()LY/K;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    iget-object v0, v0, LY/K;->m:Lm2/e;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lm2/e;->q(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    throw v0

    .line 49
    :cond_2
    return-void
.end method

.method public final r(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/K;

    .line 4
    .line 5
    iget-object v0, v0, LY/K;->w:LY/s;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, LY/s;->n()LY/K;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, LY/K;->m:Lm2/e;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lm2/e;->r(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    throw v0

    .line 45
    :cond_2
    return-void
.end method

.method public final s(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/K;

    .line 4
    .line 5
    iget-object v0, v0, LY/K;->w:LY/s;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, LY/s;->n()LY/K;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, LY/K;->m:Lm2/e;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lm2/e;->s(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    throw v0

    .line 45
    :cond_2
    return-void
.end method

.method public final t(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/K;

    .line 4
    .line 5
    iget-object v0, v0, LY/K;->w:LY/s;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, LY/s;->n()LY/K;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, LY/K;->m:Lm2/e;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lm2/e;->t(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    throw v0

    .line 45
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lm2/e;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v1, 0x64

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x7b

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_0
    if-ge v2, v1, :cond_1

    .line 46
    .line 47
    iget-object v3, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v3, Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    add-int/lit8 v3, v1, -0x1

    .line 61
    .line 62
    if-ge v2, v3, :cond_0

    .line 63
    .line 64
    const-string v3, ", "

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/16 v1, 0x7d

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public final u(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/K;

    .line 4
    .line 5
    iget-object v0, v0, LY/K;->w:LY/s;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, LY/s;->n()LY/K;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, LY/K;->m:Lm2/e;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lm2/e;->u(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    throw v0

    .line 45
    :cond_2
    return-void
.end method

.method public final v(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/K;

    .line 4
    .line 5
    iget-object v0, v0, LY/K;->w:LY/s;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, LY/s;->n()LY/K;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, LY/K;->m:Lm2/e;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lm2/e;->v(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    throw v0

    .line 45
    :cond_2
    return-void
.end method

.method public final w(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/K;

    .line 4
    .line 5
    iget-object v0, v0, LY/K;->w:LY/s;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, LY/s;->n()LY/K;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, LY/K;->m:Lm2/e;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lm2/e;->w(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    throw v0

    .line 45
    :cond_2
    return-void
.end method

.method public final x(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/K;

    .line 4
    .line 5
    iget-object v0, v0, LY/K;->w:LY/s;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, LY/s;->n()LY/K;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, LY/K;->m:Lm2/e;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lm2/e;->x(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    throw v0

    .line 45
    :cond_2
    return-void
.end method

.method public final y(FFII)LM5/a;
    .locals 11

    .line 1
    mul-float p2, p2, p1

    .line 2
    .line 3
    float-to-int p2, p2

    .line 4
    sub-int v0, p3, p2

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    iget-object v0, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lw5/b;

    .line 14
    .line 15
    iget v0, v0, Lw5/b;->G:I

    .line 16
    .line 17
    const/4 v10, 0x1

    .line 18
    sub-int/2addr v0, v10

    .line 19
    add-int/2addr p3, p2

    .line 20
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    sub-int v6, p3, v4

    .line 25
    .line 26
    int-to-float p3, v6

    .line 27
    const/high16 v0, 0x40400000    # 3.0f

    .line 28
    .line 29
    mul-float v0, v0, p1

    .line 30
    .line 31
    cmpg-float p3, p3, v0

    .line 32
    .line 33
    if-ltz p3, :cond_c

    .line 34
    .line 35
    sub-int p3, p4, p2

    .line 36
    .line 37
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    iget-object p3, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p3, Lw5/b;

    .line 44
    .line 45
    iget p3, p3, Lw5/b;->H:I

    .line 46
    .line 47
    sub-int/2addr p3, v10

    .line 48
    add-int/2addr p4, p2

    .line 49
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    sub-int v7, p2, v5

    .line 54
    .line 55
    int-to-float p2, v7

    .line 56
    cmpg-float p2, p2, v0

    .line 57
    .line 58
    if-ltz p2, :cond_b

    .line 59
    .line 60
    new-instance p2, LM5/b;

    .line 61
    .line 62
    iget-object p3, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 63
    .line 64
    move-object v3, p3

    .line 65
    check-cast v3, Lw5/b;

    .line 66
    .line 67
    iget-object p3, p0, Lm2/e;->I:Ljava/lang/Object;

    .line 68
    .line 69
    move-object v9, p3

    .line 70
    check-cast v9, Lq5/p;

    .line 71
    .line 72
    move-object v2, p2

    .line 73
    move v8, p1

    .line 74
    invoke-direct/range {v2 .. v9}, LM5/b;-><init>(Lw5/b;IIIIFLq5/p;)V

    .line 75
    .line 76
    .line 77
    iget p1, p2, LM5/b;->e:I

    .line 78
    .line 79
    iget p3, p2, LM5/b;->c:I

    .line 80
    .line 81
    add-int/2addr p1, p3

    .line 82
    iget p4, p2, LM5/b;->f:I

    .line 83
    .line 84
    div-int/lit8 v0, p4, 0x2

    .line 85
    .line 86
    iget v2, p2, LM5/b;->d:I

    .line 87
    .line 88
    add-int/2addr v0, v2

    .line 89
    const/4 v2, 0x3

    .line 90
    new-array v2, v2, [I

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    :goto_0
    if-ge v3, p4, :cond_9

    .line 94
    .line 95
    and-int/lit8 v4, v3, 0x1

    .line 96
    .line 97
    const/4 v5, 0x2

    .line 98
    if-nez v4, :cond_0

    .line 99
    .line 100
    add-int/lit8 v4, v3, 0x1

    .line 101
    .line 102
    div-int/2addr v4, v5

    .line 103
    goto :goto_1

    .line 104
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 105
    .line 106
    div-int/2addr v4, v5

    .line 107
    neg-int v4, v4

    .line 108
    :goto_1
    add-int/2addr v4, v0

    .line 109
    aput v1, v2, v1

    .line 110
    .line 111
    aput v1, v2, v10

    .line 112
    .line 113
    aput v1, v2, v5

    .line 114
    .line 115
    move v6, p3

    .line 116
    :goto_2
    iget-object v7, p2, LM5/b;->a:Lw5/b;

    .line 117
    .line 118
    if-ge v6, p1, :cond_1

    .line 119
    .line 120
    invoke-virtual {v7, v6, v4}, Lw5/b;->b(II)Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-nez v8, :cond_1

    .line 125
    .line 126
    add-int/lit8 v6, v6, 0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_1
    const/4 v8, 0x0

    .line 130
    :goto_3
    if-ge v6, p1, :cond_7

    .line 131
    .line 132
    invoke-virtual {v7, v6, v4}, Lw5/b;->b(II)Z

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-eqz v9, :cond_5

    .line 137
    .line 138
    if-ne v8, v10, :cond_2

    .line 139
    .line 140
    aget v9, v2, v10

    .line 141
    .line 142
    add-int/2addr v9, v10

    .line 143
    aput v9, v2, v10

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_2
    if-ne v8, v5, :cond_4

    .line 147
    .line 148
    invoke-virtual {p2, v2}, LM5/b;->a([I)Z

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-eqz v8, :cond_3

    .line 153
    .line 154
    invoke-virtual {p2, v4, v6, v2}, LM5/b;->b(II[I)LM5/a;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    if-eqz v8, :cond_3

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_3
    aget v8, v2, v5

    .line 162
    .line 163
    aput v8, v2, v1

    .line 164
    .line 165
    aput v10, v2, v10

    .line 166
    .line 167
    aput v1, v2, v5

    .line 168
    .line 169
    const/4 v8, 0x1

    .line 170
    goto :goto_4

    .line 171
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 172
    .line 173
    aget v9, v2, v8

    .line 174
    .line 175
    add-int/2addr v9, v10

    .line 176
    aput v9, v2, v8

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_5
    if-ne v8, v10, :cond_6

    .line 180
    .line 181
    add-int/lit8 v8, v8, 0x1

    .line 182
    .line 183
    :cond_6
    aget v9, v2, v8

    .line 184
    .line 185
    add-int/2addr v9, v10

    .line 186
    aput v9, v2, v8

    .line 187
    .line 188
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_7
    invoke-virtual {p2, v2}, LM5/b;->a([I)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_8

    .line 196
    .line 197
    invoke-virtual {p2, v4, p1, v2}, LM5/b;->b(II[I)LM5/a;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    if-eqz v8, :cond_8

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_9
    iget-object p1, p2, LM5/b;->b:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-nez p2, :cond_a

    .line 214
    .line 215
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    move-object v8, p1

    .line 220
    check-cast v8, LM5/a;

    .line 221
    .line 222
    :goto_5
    return-object v8

    .line 223
    :cond_a
    sget-object p1, Lq5/i;->I:Lq5/i;

    .line 224
    .line 225
    throw p1

    .line 226
    :cond_b
    sget-object p1, Lq5/i;->I:Lq5/i;

    .line 227
    .line 228
    throw p1

    .line 229
    :cond_c
    sget-object p1, Lq5/i;->I:Lq5/i;

    .line 230
    .line 231
    throw p1
.end method

.method public final z(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    .line 1
    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, LP1/z;->N(ILjava/lang/String;)LP1/z;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, v1, p1}, LP1/z;->g(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, LP1/x;

    .line 14
    .line 15
    invoke-virtual {p1}, LP1/x;->b()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lm2/e;->H:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, LP1/x;

    .line 21
    .line 22
    invoke-static {p1, v0}, LZ3/C;->h(LP1/x;LP1/z;)Landroid/database/Cursor;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, LP1/z;->O()V

    .line 56
    .line 57
    .line 58
    return-object v2

    .line 59
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, LP1/z;->O()V

    .line 63
    .line 64
    .line 65
    throw v1
.end method
