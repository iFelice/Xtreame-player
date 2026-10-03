.class public final Ll3/d1;
.super LM3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ll3/d1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final G:Ljava/lang/String;

.field public final H:I

.field public final I:I

.field public final J:Z

.field public final K:I

.field public final L:I

.field public final M:[Ll3/d1;

.field public final N:Z

.field public final O:Z

.field public P:Z

.field public final Q:Z

.field public final R:Z

.field public final S:Z

.field public final T:Z

.field public final U:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/a;

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lc/a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ll3/d1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 16

    .line 1
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 2
    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Ll3/d1;-><init>(Ljava/lang/String;IIZII[Ll3/d1;ZZZZZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf3/g;)V
    .locals 2

    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Lf3/g;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Ll3/d1;-><init>(Landroid/content/Context;[Lf3/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lf3/g;)V
    .locals 17

    .line 5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 7
    aget-object v4, v2, v3

    iput-boolean v3, v0, Ll3/d1;->J:Z

    .line 8
    iget v5, v4, Lf3/g;->a:I

    const/4 v6, 0x1

    const/4 v7, -0x3

    .line 9
    iget v8, v4, Lf3/g;->b:I

    if-ne v5, v7, :cond_0

    const/4 v7, -0x4

    if-ne v8, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 10
    :goto_0
    iput-boolean v7, v0, Ll3/d1;->O:Z

    .line 11
    iput-boolean v3, v0, Ll3/d1;->S:Z

    .line 12
    iget-boolean v9, v4, Lf3/g;->d:Z

    .line 13
    iput-boolean v9, v0, Ll3/d1;->T:Z

    .line 14
    iget-boolean v10, v4, Lf3/g;->f:Z

    .line 15
    iput-boolean v10, v0, Ll3/d1;->U:Z

    if-eqz v7, :cond_1

    sget-object v5, Lf3/g;->h:Lf3/g;

    .line 16
    iget v8, v5, Lf3/g;->a:I

    .line 17
    iput v8, v0, Ll3/d1;->K:I

    .line 18
    iget v8, v5, Lf3/g;->b:I

    iput v8, v0, Ll3/d1;->H:I

    goto :goto_1

    :cond_1
    if-eqz v9, :cond_2

    .line 19
    iput v5, v0, Ll3/d1;->K:I

    .line 20
    iget v8, v4, Lf3/g;->e:I

    .line 21
    iput v8, v0, Ll3/d1;->H:I

    goto :goto_1

    :cond_2
    if-eqz v10, :cond_3

    .line 22
    iput v5, v0, Ll3/d1;->K:I

    .line 23
    iget v8, v4, Lf3/g;->g:I

    .line 24
    iput v8, v0, Ll3/d1;->H:I

    goto :goto_1

    .line 25
    :cond_3
    iput v5, v0, Ll3/d1;->K:I

    .line 26
    iput v8, v0, Ll3/d1;->H:I

    .line 27
    :goto_1
    iget v5, v0, Ll3/d1;->K:I

    const/4 v11, -0x1

    if-ne v5, v11, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/4 v11, -0x2

    if-ne v8, v11, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    .line 28
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    if-eqz v5, :cond_9

    .line 29
    sget-object v12, Ll3/p;->f:Ll3/p;

    iget-object v12, v12, Ll3/p;->a:Lp3/d;

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_6

    goto :goto_5

    .line 31
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 32
    iget v13, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v13, v13

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v13, v12

    float-to-int v12, v13

    const/16 v13, 0x258

    if-ge v12, v13, :cond_8

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const-string v13, "window"

    .line 34
    invoke-virtual {v1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    if-eqz v13, :cond_8

    .line 35
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    .line 36
    invoke-virtual {v13, v12}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    iget v14, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 38
    iget v15, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 39
    invoke-virtual {v13, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 40
    iget v13, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 41
    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v13, v14, :cond_8

    if-ne v12, v15, :cond_8

    .line 42
    iget v12, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "android"

    const-string v15, "navigation_bar_width"

    const-string v3, "dimen"

    invoke-virtual {v13, v15, v3, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_7

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    sub-int/2addr v12, v3

    iput v12, v0, Ll3/d1;->L:I

    goto :goto_6

    .line 45
    :cond_8
    :goto_5
    iget v12, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v12, v0, Ll3/d1;->L:I

    .line 46
    :goto_6
    iget v3, v11, Landroid/util/DisplayMetrics;->density:F

    int-to-float v12, v12

    div-float/2addr v12, v3

    float-to-double v12, v12

    double-to-int v3, v12

    int-to-double v14, v3

    sub-double/2addr v12, v14

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v16, v12, v14

    if-ltz v16, :cond_a

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 47
    :cond_9
    iget v3, v0, Ll3/d1;->K:I

    .line 48
    sget-object v12, Ll3/p;->f:Ll3/p;

    iget-object v12, v12, Ll3/p;->a:Lp3/d;

    .line 49
    invoke-static {v11, v3}, Lp3/d;->l(Landroid/util/DisplayMetrics;I)I

    move-result v12

    iput v12, v0, Ll3/d1;->L:I

    :cond_a
    :goto_7
    if-eqz v8, :cond_d

    .line 50
    iget v12, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v12

    iget v13, v11, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v12, v13

    float-to-int v12, v12

    const/16 v13, 0x190

    if-gt v12, v13, :cond_b

    const/16 v12, 0x20

    goto :goto_8

    :cond_b
    const/16 v13, 0x2d0

    if-gt v12, v13, :cond_c

    const/16 v12, 0x32

    goto :goto_8

    :cond_c
    const/16 v12, 0x5a

    goto :goto_8

    .line 51
    :cond_d
    iget v12, v0, Ll3/d1;->H:I

    .line 52
    :goto_8
    sget-object v13, Ll3/p;->f:Ll3/p;

    iget-object v13, v13, Ll3/p;->a:Lp3/d;

    .line 53
    invoke-static {v11, v12}, Lp3/d;->l(Landroid/util/DisplayMetrics;I)I

    move-result v11

    iput v11, v0, Ll3/d1;->I:I

    const-string v11, "_as"

    const-string v13, "x"

    if-nez v5, :cond_12

    if-eqz v8, :cond_e

    goto :goto_b

    :cond_e
    if-nez v9, :cond_11

    if-eqz v10, :cond_f

    goto :goto_a

    :cond_f
    if-eqz v7, :cond_10

    .line 54
    const-string v3, "320x50_mb"

    :goto_9
    iput-object v3, v0, Ll3/d1;->G:Ljava/lang/String;

    goto :goto_c

    .line 55
    :cond_10
    iget-object v3, v4, Lf3/g;->c:Ljava/lang/String;

    iput-object v3, v0, Ll3/d1;->G:Ljava/lang/String;

    goto :goto_c

    .line 56
    :cond_11
    :goto_a
    iget v3, v0, Ll3/d1;->K:I

    iget v4, v0, Ll3/d1;->H:I

    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 58
    :cond_12
    :goto_b
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ll3/d1;->G:Ljava/lang/String;

    .line 60
    :goto_c
    array-length v3, v2

    if-le v3, v6, :cond_14

    new-array v3, v3, [Ll3/d1;

    iput-object v3, v0, Ll3/d1;->M:[Ll3/d1;

    const/4 v3, 0x0

    .line 61
    :goto_d
    array-length v4, v2

    if-ge v3, v4, :cond_13

    iget-object v4, v0, Ll3/d1;->M:[Ll3/d1;

    new-instance v5, Ll3/d1;

    .line 62
    aget-object v6, v2, v3

    invoke-direct {v5, v1, v6}, Ll3/d1;-><init>(Landroid/content/Context;Lf3/g;)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_13
    :goto_e
    const/4 v1, 0x0

    goto :goto_f

    :cond_14
    const/4 v1, 0x0

    iput-object v1, v0, Ll3/d1;->M:[Ll3/d1;

    goto :goto_e

    :goto_f
    iput-boolean v1, v0, Ll3/d1;->N:Z

    iput-boolean v1, v0, Ll3/d1;->P:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZII[Ll3/d1;ZZZZZZZZ)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Ll3/d1;->G:Ljava/lang/String;

    iput p2, p0, Ll3/d1;->H:I

    iput p3, p0, Ll3/d1;->I:I

    iput-boolean p4, p0, Ll3/d1;->J:Z

    iput p5, p0, Ll3/d1;->K:I

    iput p6, p0, Ll3/d1;->L:I

    iput-object p7, p0, Ll3/d1;->M:[Ll3/d1;

    iput-boolean p8, p0, Ll3/d1;->N:Z

    iput-boolean p9, p0, Ll3/d1;->O:Z

    iput-boolean p10, p0, Ll3/d1;->P:Z

    iput-boolean p11, p0, Ll3/d1;->Q:Z

    iput-boolean p12, p0, Ll3/d1;->R:Z

    iput-boolean p13, p0, Ll3/d1;->S:Z

    iput-boolean p14, p0, Ll3/d1;->T:Z

    iput-boolean p15, p0, Ll3/d1;->U:Z

    return-void
.end method

.method public static i()Ll3/d1;
    .locals 17

    .line 1
    new-instance v16, Ll3/d1;

    .line 2
    .line 3
    const/4 v14, 0x0

    .line 4
    const/4 v15, 0x0

    .line 5
    const-string v1, "interstitial_mb"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v12, 0x1

    .line 18
    const/4 v13, 0x0

    .line 19
    move-object/from16 v0, v16

    .line 20
    .line 21
    invoke-direct/range {v0 .. v15}, Ll3/d1;-><init>(Ljava/lang/String;IIZII[Ll3/d1;ZZZZZZZZ)V

    .line 22
    .line 23
    .line 24
    return-object v16
.end method

.method public static l()Ll3/d1;
    .locals 17

    .line 1
    new-instance v16, Ll3/d1;

    .line 2
    .line 3
    const/4 v14, 0x0

    .line 4
    const/4 v15, 0x0

    .line 5
    const-string v1, "320x50_mb"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x1

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v12, 0x0

    .line 18
    const/4 v13, 0x0

    .line 19
    move-object/from16 v0, v16

    .line 20
    .line 21
    invoke-direct/range {v0 .. v15}, Ll3/d1;-><init>(Ljava/lang/String;IIZII[Ll3/d1;ZZZZZZZZ)V

    .line 22
    .line 23
    .line 24
    return-object v16
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    iget-object v2, p0, Ll3/d1;->G:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    const/4 v2, 0x4

    .line 15
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Ll3/d1;->H:I

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v2, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Ll3/d1;->I:I

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 33
    .line 34
    .line 35
    iget-boolean v1, p0, Ll3/d1;->J:Z

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x6

    .line 41
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 42
    .line 43
    .line 44
    iget v1, p0, Ll3/d1;->K:I

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x7

    .line 50
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 51
    .line 52
    .line 53
    iget v1, p0, Ll3/d1;->L:I

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x8

    .line 59
    .line 60
    iget-object v3, p0, Ll3/d1;->M:[Ll3/d1;

    .line 61
    .line 62
    invoke-static {p1, v1, v3, p2}, Lf/b;->T(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 63
    .line 64
    .line 65
    const/16 p2, 0x9

    .line 66
    .line 67
    invoke-static {p1, p2, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 68
    .line 69
    .line 70
    iget-boolean p2, p0, Ll3/d1;->N:Z

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    .line 74
    .line 75
    const/16 p2, 0xa

    .line 76
    .line 77
    invoke-static {p1, p2, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 78
    .line 79
    .line 80
    iget-boolean p2, p0, Ll3/d1;->O:Z

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    .line 84
    .line 85
    iget-boolean p2, p0, Ll3/d1;->P:Z

    .line 86
    .line 87
    const/16 v1, 0xb

    .line 88
    .line 89
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    .line 94
    .line 95
    const/16 p2, 0xc

    .line 96
    .line 97
    invoke-static {p1, p2, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 98
    .line 99
    .line 100
    iget-boolean p2, p0, Ll3/d1;->Q:Z

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    .line 104
    .line 105
    const/16 p2, 0xd

    .line 106
    .line 107
    invoke-static {p1, p2, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 108
    .line 109
    .line 110
    iget-boolean p2, p0, Ll3/d1;->R:Z

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    .line 114
    .line 115
    const/16 p2, 0xe

    .line 116
    .line 117
    invoke-static {p1, p2, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 118
    .line 119
    .line 120
    iget-boolean p2, p0, Ll3/d1;->S:Z

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    .line 124
    .line 125
    const/16 p2, 0xf

    .line 126
    .line 127
    invoke-static {p1, p2, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 128
    .line 129
    .line 130
    iget-boolean p2, p0, Ll3/d1;->T:Z

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    .line 134
    .line 135
    const/16 p2, 0x10

    .line 136
    .line 137
    invoke-static {p1, p2, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 138
    .line 139
    .line 140
    iget-boolean p2, p0, Ll3/d1;->U:Z

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    .line 144
    .line 145
    invoke-static {v0, p1}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method
