.class public final LF/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/o;
.implements Lcom/google/android/gms/internal/ads/w3;
.implements LK3/p;
.implements Lg4/d;
.implements Lcom/google/android/gms/internal/measurement/v;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;

.field public final I:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 53
    iput v0, p0, LF/i;->G:I

    .line 54
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LF/i;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, LF/i;->G:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, LF/i;-><init>()V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LF/i;->H:Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LF/i;->I:Ljava/lang/Object;

    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LF/i;->H:Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LF/i;->I:Ljava/lang/Object;

    return-void

    .line 9
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p1, Lz2/f;

    const/4 v0, 0x0

    .line 11
    invoke-direct {p1, v0}, Lz2/f;-><init>(Ljava/lang/Object;)V

    .line 12
    iput-object p1, p0, LF/i;->H:Ljava/lang/Object;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LF/i;->I:Ljava/lang/Object;

    return-void

    .line 14
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x200

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, LF/i;->H:Ljava/lang/Object;

    .line 16
    new-instance p1, Ljava/io/DataOutputStream;

    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, LF/i;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, LF/i;->G:I

    .line 65
    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, LF/i;->H:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 66
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, LF/i;->I:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, LF/i;->G:I

    .line 69
    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    iput-object p1, p0, LF/i;->H:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 70
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, LF/i;->I:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LF/i;->G:I

    iput-object p2, p0, LF/i;->H:Ljava/lang/Object;

    iput-object p3, p0, LF/i;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LI5/a;[I)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x16

    .line 41
    iput v0, p0, LF/i;->G:I

    .line 42
    array-length v0, p2

    if-eqz v0, :cond_3

    .line 43
    iput-object p1, p0, LF/i;->I:Ljava/lang/Object;

    .line 44
    array-length p1, p2

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    const/4 v1, 0x0

    .line 45
    aget v2, p2, v1

    if-nez v2, :cond_2

    :goto_0
    if-ge v0, p1, :cond_0

    .line 46
    aget v2, p2, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 47
    filled-new-array {v1}, [I

    move-result-object p1

    iput-object p1, p0, LF/i;->H:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v0

    .line 48
    new-array v2, p1, [I

    iput-object v2, p0, LF/i;->H:Ljava/lang/Object;

    .line 49
    invoke-static {p2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 50
    :cond_2
    iput-object p2, p0, LF/i;->H:Ljava/lang/Object;

    :goto_1
    return-void

    .line 51
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(LK3/V;Landroid/app/AlertDialog;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    .line 19
    iput v0, p0, LF/i;->G:I

    .line 20
    iput-object p1, p0, LF/i;->I:Ljava/lang/Object;

    iput-object p2, p0, LF/i;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    .line 32
    iput v0, p0, LF/i;->G:I

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LF/i;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc4/f0;Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    .line 22
    iput v0, p0, LF/i;->G:I

    .line 23
    iput-object p2, p0, LF/i;->H:Ljava/lang/Object;

    iput-object p1, p0, LF/i;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 24
    const/4 v0, 0x5

    iput v0, p0, LF/i;->G:I

    .line 25
    invoke-direct {p0, v0, p1, p2}, LF/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo3/t;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    .line 27
    iput v0, p0, LF/i;->G:I

    .line 28
    iput-object p1, p0, LF/i;->H:Ljava/lang/Object;

    iput-object p2, p0, LF/i;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lr2/o;)V
    .locals 1

    .line 29
    const/4 v0, 0x6

    iput v0, p0, LF/i;->G:I

    .line 30
    invoke-direct {p0, v0, p1, p2}, LF/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17

    .line 35
    iput v0, p0, LF/i;->G:I

    .line 36
    iput-object p1, p0, LF/i;->H:Ljava/lang/Object;

    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, LF/i;->I:Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 39
    iget-object v2, p0, LF/i;->I:Ljava/lang/Object;

    check-cast v2, [Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, LF/i;->G:I

    .line 58
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 59
    new-array v2, v1, [I

    iput-object v2, p0, LF/i;->H:Ljava/lang/Object;

    .line 60
    new-array v2, v1, [F

    iput-object v2, p0, LF/i;->I:Ljava/lang/Object;

    :goto_0
    if-ge v0, v1, :cond_0

    .line 61
    iget-object v2, p0, LF/i;->H:Ljava/lang/Object;

    check-cast v2, [I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 62
    iget-object v2, p0, LF/i;->I:Ljava/lang/Object;

    check-cast v2, [F

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lz4/d0;[I)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 72
    iput v0, p0, LF/i;->G:I

    .line 73
    invoke-static {p1}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    move-result-object p1

    iput-object p1, p0, LF/i;->I:Ljava/lang/Object;

    .line 74
    iput-object p2, p0, LF/i;->H:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LK3/V;

    .line 4
    .line 5
    iget-object v0, v0, LK3/V;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, LK3/W;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    throw v0
.end method

.method public final B()V
    .locals 4

    .line 1
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    new-instance v1, Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, LF/i;->H:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-class v3, Lcom/google/android/tv/ads/controls/FallbackImageActivity;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/high16 v2, 0x10000000

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "render_error_message"

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final a(LF/i;)LF/i;
    .locals 8

    .line 1
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LI5/a;

    .line 4
    .line 5
    iget-object v1, p1, LF/i;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LI5/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0}, LF/i;->r()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    invoke-virtual {p1}, LF/i;->r()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, [I

    .line 32
    .line 33
    iget-object p1, p1, LF/i;->H:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, [I

    .line 36
    .line 37
    array-length v1, v0

    .line 38
    array-length v2, p1

    .line 39
    if-le v1, v2, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object v7, v0

    .line 43
    move-object v0, p1

    .line 44
    move-object p1, v7

    .line 45
    :goto_0
    array-length v1, v0

    .line 46
    new-array v1, v1, [I

    .line 47
    .line 48
    array-length v2, v0

    .line 49
    array-length v3, p1

    .line 50
    sub-int/2addr v2, v3

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    move v3, v2

    .line 56
    :goto_1
    array-length v4, v0

    .line 57
    if-ge v3, v4, :cond_3

    .line 58
    .line 59
    iget-object v4, p0, LF/i;->I:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v4, LI5/a;

    .line 62
    .line 63
    sub-int v5, v3, v2

    .line 64
    .line 65
    aget v5, p1, v5

    .line 66
    .line 67
    aget v6, v0, v3

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    add-int/2addr v5, v6

    .line 73
    rem-int/lit16 v5, v5, 0x3a1

    .line 74
    .line 75
    aput v5, v1, v3

    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    new-instance p1, LF/i;

    .line 81
    .line 82
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, LI5/a;

    .line 85
    .line 86
    invoke-direct {p1, v0, v1}, LF/i;-><init>(LI5/a;[I)V

    .line 87
    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string v0, "ModulusPolys do not have same ModulusGF field"

    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method

.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, LH3/u;

    .line 2
    .line 3
    check-cast p2, Lg4/i;

    .line 4
    .line 5
    new-instance v0, LH3/s;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, p2, v1}, LH3/s;-><init>(Lg4/i;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, LH3/i;

    .line 16
    .line 17
    iget-object p2, p0, LF/i;->I:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p2, [Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/u;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x7

    .line 32
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/ads/y5;->i2(ILandroid/os/Parcel;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY5/D;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, LY5/D;->G:Z

    .line 7
    .line 8
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final c(Lg1/a;)[B
    .locals 3

    .line 1
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/io/DataOutputStream;

    .line 11
    .line 12
    iget-object v1, p1, Lg1/a;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, Lg1/a;->b:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v0, ""

    .line 27
    .line 28
    :goto_0
    iget-object v2, p0, LF/i;->I:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Ljava/io/DataOutputStream;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Ljava/io/DataOutputStream;

    .line 41
    .line 42
    iget-wide v1, p1, Lg1/a;->c:J

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Ljava/io/DataOutputStream;

    .line 50
    .line 51
    iget-wide v1, p1, Lg1/a;->d:J

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Ljava/io/DataOutputStream;

    .line 59
    .line 60
    iget-object p1, p1, Lg1/a;->e:[B

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, LF/i;->I:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Ljava/io/DataOutputStream;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, LF/i;->H:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Ljava/io/ByteArrayOutputStream;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 77
    .line 78
    .line 79
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-object p1

    .line 81
    :catch_0
    move-exception p1

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    .line 83
    .line 84
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    throw v0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/y3;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Failed to load URL: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, LF/i;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "\n"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, LF/i;->I:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lo3/t;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/te;->b(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/measurement/n;)Lm2/i;
    .locals 3

    .line 1
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm2/i;

    .line 4
    .line 5
    invoke-virtual {v0}, Lm2/i;->r()Lm2/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, LF/i;->I:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lm2/i;->z(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, v0, Lm2/i;->K:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Ljava/util/Map;

    .line 19
    .line 20
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final f(I)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, v0}, LF/i;->h(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne p1, v1, :cond_2

    .line 11
    .line 12
    iget-object p1, p0, LF/i;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, [I

    .line 15
    .line 16
    array-length v1, p1

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v0, v1, :cond_1

    .line 19
    .line 20
    aget v3, p1, v0

    .line 21
    .line 22
    iget-object v4, p0, LF/i;->I:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v4, LI5/a;

    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    add-int/2addr v2, v3

    .line 30
    rem-int/lit16 v2, v2, 0x3a1

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return v2

    .line 36
    :cond_2
    iget-object v2, p0, LF/i;->H:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, [I

    .line 39
    .line 40
    aget v0, v2, v0

    .line 41
    .line 42
    array-length v2, v2

    .line 43
    :goto_1
    if-ge v1, v2, :cond_3

    .line 44
    .line 45
    iget-object v3, p0, LF/i;->I:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v3, LI5/a;

    .line 48
    .line 49
    invoke-virtual {v3, p1, v0}, LI5/a;->b(II)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-object v4, p0, LF/i;->H:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v4, [I

    .line 56
    .line 57
    aget v4, v4, v1

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    add-int/2addr v0, v4

    .line 63
    rem-int/lit16 v0, v0, 0x3a1

    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    return v0
.end method

.method public final g(Lz2/k;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lz2/f;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lz2/f;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lz2/f;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, LF/i;->I:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {p1}, Lz2/k;->a()V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p1, v0, Lz2/f;->d:Lz2/f;

    .line 30
    .line 31
    iget-object v1, v0, Lz2/f;->c:Lz2/f;

    .line 32
    .line 33
    iput-object v1, p1, Lz2/f;->c:Lz2/f;

    .line 34
    .line 35
    iget-object v1, v0, Lz2/f;->c:Lz2/f;

    .line 36
    .line 37
    iput-object p1, v1, Lz2/f;->d:Lz2/f;

    .line 38
    .line 39
    iget-object p1, p0, LF/i;->H:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lz2/f;

    .line 42
    .line 43
    iput-object p1, v0, Lz2/f;->d:Lz2/f;

    .line 44
    .line 45
    iget-object p1, p1, Lz2/f;->c:Lz2/f;

    .line 46
    .line 47
    iput-object p1, v0, Lz2/f;->c:Lz2/f;

    .line 48
    .line 49
    iput-object v0, p1, Lz2/f;->d:Lz2/f;

    .line 50
    .line 51
    iget-object p1, v0, Lz2/f;->d:Lz2/f;

    .line 52
    .line 53
    iput-object v0, p1, Lz2/f;->c:Lz2/f;

    .line 54
    .line 55
    iget-object p1, v0, Lz2/f;->b:Ljava/util/ArrayList;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/4 p1, 0x0

    .line 65
    :goto_1
    if-lez p1, :cond_2

    .line 66
    .line 67
    iget-object v0, v0, Lz2/f;->b:Ljava/util/ArrayList;

    .line 68
    .line 69
    add-int/lit8 p1, p1, -0x1

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    const/4 p1, 0x0

    .line 77
    :goto_2
    return-object p1
.end method

.method public final h(I)I
    .locals 2

    .line 1
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, [I

    .line 5
    .line 6
    check-cast v0, [I

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    sub-int/2addr v0, p1

    .line 12
    aget p1, v1, v0

    .line 13
    .line 14
    return p1
.end method

.method public final i()I
    .locals 1

    .line 1
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    return v0
.end method

.method public final declared-synchronized j(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/List;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, LF/i;->I:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :cond_1
    monitor-exit p0

    .line 47
    return-object v0

    .line 48
    :goto_1
    monitor-exit p0

    .line 49
    throw p1
.end method

.method public final k(Lw2/f;)I
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
    iget-object v3, p0, LF/i;->H:Ljava/lang/Object;

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
    iget-object v3, p0, LF/i;->I:Ljava/lang/Object;

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
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lz2/h;

    .line 31
    .line 32
    invoke-interface {p1, v1, v0}, Lw2/f;->d(Ljava/io/InputStream;Lz2/h;)I

    .line 33
    .line 34
    .line 35
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-virtual {v1}, LF2/w;->E()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lcom/bumptech/glide/load/data/n;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/n;->b()Landroid/os/ParcelFileDescriptor;

    .line 44
    .line 45
    .line 46
    return p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    move-object v0, v1

    .line 49
    goto :goto_0

    .line 50
    :catchall_1
    move-exception p1

    .line 51
    :goto_0
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, LF2/w;->E()V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lcom/bumptech/glide/load/data/n;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/n;->b()Landroid/os/ParcelFileDescriptor;

    .line 61
    .line 62
    .line 63
    throw p1
.end method

.method public final declared-synchronized l(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, LF/i;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    iget-object v3, p0, LF/i;->I:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/List;

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, LK2/c;

    .line 55
    .line 56
    iget-object v4, v3, LK2/c;->a:Ljava/lang/Class;

    .line 57
    .line 58
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    iget-object v4, v3, LK2/c;->b:Ljava/lang/Class;

    .line 65
    .line 66
    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    iget-object v4, v3, LK2/c;->b:Ljava/lang/Class;

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_2

    .line 79
    .line 80
    iget-object v3, v3, LK2/c;->b:Ljava/lang/Class;

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    monitor-exit p0

    .line 89
    return-object v0

    .line 90
    :goto_2
    monitor-exit p0

    .line 91
    throw p1
.end method

.method public final m(I)LW5/b;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, p1

    .line 3
    :goto_0
    iget-object v2, p0, LF/i;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v0, v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, v0}, LF/i;->v(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    const/4 v2, -0x1

    .line 21
    invoke-static {v1, v0, v2, p1}, LW5/b;->a(IIII)LW5/b;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    if-ge v1, v2, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    sub-int/2addr v1, v2

    .line 30
    invoke-static {v2, v0, v1, p1}, LW5/b;->a(IIII)LW5/b;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_1
    sub-int/2addr v1, v2

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    const-string v0, "Unknown state"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public final n(Ljava/lang/Object;Ljava/io/File;Lw2/l;)Z
    .locals 3

    .line 1
    check-cast p1, Ly2/D;

    .line 2
    .line 3
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lw2/o;

    .line 6
    .line 7
    new-instance v1, LF2/d;

    .line 8
    .line 9
    invoke-interface {p1}, Ly2/D;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v2, p0, LF/i;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lz2/d;

    .line 22
    .line 23
    invoke-direct {v1, p1, v2}, LF2/d;-><init>(Landroid/graphics/Bitmap;Lz2/d;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1, p2, p3}, Lw2/c;->n(Ljava/lang/Object;Ljava/io/File;Lw2/l;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public final o(Lt4/d;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lt4/b;->G:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lt4/a;

    .line 18
    .line 19
    iget-object v3, v2, Lt4/a;->K:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "atvatc"

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    const-string v4, "1"

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    iget-object v1, v2, Lt4/a;->K:Ljava/lang/String;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_0
    const/high16 v2, 0x10000000

    .line 48
    .line 49
    const/4 v3, 0x2

    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    const/4 p1, 0x3

    .line 53
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "com.google.android.tv.ads.intent.action.LAUNCH_ATC_MENU"

    .line 59
    .line 60
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v2, "extra_atc_uri"

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "extra_publisher_package"

    .line 75
    .line 76
    iget-object v2, p0, LF/i;->H:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v1, p0, LF/i;->H:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->u(Landroid/content/Context;)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-static {v1}, Lu/h;->b(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    if-eq v1, v2, :cond_3

    .line 104
    .line 105
    if-eq v1, v3, :cond_4

    .line 106
    .line 107
    if-eq v1, p1, :cond_2

    .line 108
    .line 109
    const/4 v0, 0x4

    .line 110
    if-eq v1, v0, :cond_2

    .line 111
    .line 112
    const/4 v0, 0x5

    .line 113
    if-eq v1, v0, :cond_2

    .line 114
    .line 115
    return-void

    .line 116
    :cond_2
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Landroid/content/Context;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->C(Landroid/content/Context;)Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {}, Lcom/google/android/gms/internal/atv_ads_framework/O0;->l()Lcom/google/android/gms/internal/atv_ads_framework/N0;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->e()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->g(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->f(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/google/android/gms/internal/atv_ads_framework/T;->b()Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->E(Lcom/google/android/gms/internal/atv_ads_framework/O0;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, LF/i;->B()V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_3
    iget-object v1, p0, LF/i;->H:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v1, Landroid/content/Context;

    .line 153
    .line 154
    invoke-static {v1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->C(Landroid/content/Context;)Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {}, Lcom/google/android/gms/internal/atv_ads_framework/O0;->l()Lcom/google/android/gms/internal/atv_ads_framework/N0;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->e()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->g(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/google/android/gms/internal/atv_ads_framework/T;->b()Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->E(Lcom/google/android/gms/internal/atv_ads_framework/O0;)V

    .line 175
    .line 176
    .line 177
    iget-object v1, p0, LF/i;->H:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v1, Landroid/content/Context;

    .line 180
    .line 181
    const-string v2, "com.google.android.apps.tv.launcherx"

    .line 182
    .line 183
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_4
    iget-object v1, p0, LF/i;->H:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v1, Landroid/content/Context;

    .line 194
    .line 195
    invoke-static {v1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->C(Landroid/content/Context;)Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-static {}, Lcom/google/android/gms/internal/atv_ads_framework/O0;->l()Lcom/google/android/gms/internal/atv_ads_framework/N0;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v2}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->e()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->g(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Lcom/google/android/gms/internal/atv_ads_framework/T;->b()Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    check-cast v2, Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 214
    .line 215
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->E(Lcom/google/android/gms/internal/atv_ads_framework/O0;)V

    .line 216
    .line 217
    .line 218
    iget-object v1, p0, LF/i;->H:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v1, Landroid/content/Context;

    .line 221
    .line 222
    const-string v2, "com.google.android.tvrecommendations"

    .line 223
    .line 224
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :catch_0
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v0, Landroid/content/Context;

    .line 235
    .line 236
    invoke-static {v0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->C(Landroid/content/Context;)Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {}, Lcom/google/android/gms/internal/atv_ads_framework/O0;->l()Lcom/google/android/gms/internal/atv_ads_framework/N0;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v1}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->e()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->g(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->f(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Lcom/google/android/gms/internal/atv_ads_framework/T;->b()Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    check-cast p1, Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 258
    .line 259
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->E(Lcom/google/android/gms/internal/atv_ads_framework/O0;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, LF/i;->B()V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_6

    .line 271
    .line 272
    iget-object p1, p0, LF/i;->H:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast p1, Landroid/content/Context;

    .line 275
    .line 276
    invoke-static {p1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->C(Landroid/content/Context;)Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-static {}, Lcom/google/android/gms/internal/atv_ads_framework/O0;->l()Lcom/google/android/gms/internal/atv_ads_framework/N0;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->e()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->g(I)V

    .line 288
    .line 289
    .line 290
    const/4 v1, 0x6

    .line 291
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->f(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Lcom/google/android/gms/internal/atv_ads_framework/T;->b()Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 299
    .line 300
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->E(Lcom/google/android/gms/internal/atv_ads_framework/O0;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0}, LF/i;->B()V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :cond_6
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 308
    .line 309
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v0, Landroid/content/Context;

    .line 315
    .line 316
    new-instance v1, Landroid/content/Intent;

    .line 317
    .line 318
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 319
    .line 320
    .line 321
    iget-object v3, p0, LF/i;->H:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v3, Landroid/content/Context;

    .line 324
    .line 325
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    const-class v4, Lcom/google/android/tv/ads/controls/FallbackImageActivity;

    .line 330
    .line 331
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    const-string v2, "icon_click_fallback_images"

    .line 344
    .line 345
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 350
    .line 351
    .line 352
    return-void
.end method

.method public final onComplete(Lg4/h;)V
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, LF/i;->H:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v3, Lcom/google/android/gms/internal/cast/q;

    .line 7
    .line 8
    iget-object v4, p0, LF/i;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v4, LD3/b;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lg4/h;->h()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    sget-object v6, Lcom/google/android/gms/internal/cast/q;->M:LH3/b;

    .line 20
    .line 21
    if-eqz v5, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lg4/h;->f()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/os/Bundle;

    .line 28
    .line 29
    const-string v5, "com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED"

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_0

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v7, 0x0

    .line 42
    :goto_0
    new-array v8, v2, [Ljava/lang/Object;

    .line 43
    .line 44
    if-eq v2, v7, :cond_1

    .line 45
    .line 46
    const-string v9, "not existed"

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const-string v9, "existed"

    .line 50
    .line 51
    :goto_1
    aput-object v9, v8, v1

    .line 52
    .line 53
    const-string v9, "The module-to-client output switcher flag %s"

    .line 54
    .line 55
    invoke-virtual {v6, v9, v8}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    if-eqz v7, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/4 p1, 0x1

    .line 66
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    iget-boolean v7, v4, LD3/b;->S:Z

    .line 71
    .line 72
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    new-array v8, v0, [Ljava/lang/Object;

    .line 77
    .line 78
    aput-object v5, v8, v1

    .line 79
    .line 80
    aput-object v7, v8, v2

    .line 81
    .line 82
    iget-object v5, v6, LH3/b;->a:Ljava/lang/String;

    .line 83
    .line 84
    const-string v7, "Set up output switcher flags: %b (from module), %b (from CastOptions)"

    .line 85
    .line 86
    invoke-virtual {v6, v7, v8}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    iget-boolean p1, v4, LD3/b;->S:Z

    .line 96
    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    const/4 p1, 0x1

    .line 100
    goto :goto_3

    .line 101
    :cond_3
    const/4 p1, 0x0

    .line 102
    :goto_3
    iget-object v4, v3, Lcom/google/android/gms/internal/cast/q;->H:LE1/H;

    .line 103
    .line 104
    if-eqz v4, :cond_d

    .line 105
    .line 106
    iget-object v4, v3, Lcom/google/android/gms/internal/cast/q;->I:LD3/b;

    .line 107
    .line 108
    if-nez v4, :cond_4

    .line 109
    .line 110
    goto/16 :goto_7

    .line 111
    .line 112
    :cond_4
    new-instance v5, LD0/g;

    .line 113
    .line 114
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 115
    .line 116
    .line 117
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 118
    .line 119
    const/16 v8, 0x1e

    .line 120
    .line 121
    if-lt v7, v8, :cond_5

    .line 122
    .line 123
    const/4 v9, 0x1

    .line 124
    goto :goto_4

    .line 125
    :cond_5
    const/4 v9, 0x0

    .line 126
    :goto_4
    iput-boolean v9, v5, LD0/g;->a:Z

    .line 127
    .line 128
    if-lt v7, v8, :cond_6

    .line 129
    .line 130
    iput-boolean p1, v5, LD0/g;->a:Z

    .line 131
    .line 132
    :cond_6
    iget-boolean v9, v4, LD3/b;->Q:Z

    .line 133
    .line 134
    if-lt v7, v8, :cond_7

    .line 135
    .line 136
    iput-boolean v9, v5, LD0/g;->c:Z

    .line 137
    .line 138
    :cond_7
    iget-boolean v4, v4, LD3/b;->P:Z

    .line 139
    .line 140
    if-lt v7, v8, :cond_8

    .line 141
    .line 142
    iput-boolean v4, v5, LD0/g;->b:Z

    .line 143
    .line 144
    :cond_8
    new-instance v7, LE1/Q;

    .line 145
    .line 146
    invoke-direct {v7, v5}, LE1/Q;-><init>(LD0/g;)V

    .line 147
    .line 148
    .line 149
    invoke-static {}, LE1/H;->b()V

    .line 150
    .line 151
    .line 152
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    iget-object v8, v5, LE1/A;->q:LE1/Q;

    .line 157
    .line 158
    iput-object v7, v5, LE1/A;->q:LE1/Q;

    .line 159
    .line 160
    invoke-virtual {v5}, LE1/A;->g()Z

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    if-eqz v10, :cond_b

    .line 165
    .line 166
    iget-object v10, v5, LE1/A;->f:LE1/f;

    .line 167
    .line 168
    if-nez v10, :cond_9

    .line 169
    .line 170
    new-instance v10, LE1/f;

    .line 171
    .line 172
    new-instance v11, LE1/u;

    .line 173
    .line 174
    invoke-direct {v11, v5, v2}, LE1/u;-><init>(LE1/A;I)V

    .line 175
    .line 176
    .line 177
    iget-object v12, v5, LE1/A;->a:Landroid/content/Context;

    .line 178
    .line 179
    invoke-direct {v10, v12, v11}, LE1/f;-><init>(Landroid/content/Context;LE1/u;)V

    .line 180
    .line 181
    .line 182
    iput-object v10, v5, LE1/A;->f:LE1/f;

    .line 183
    .line 184
    invoke-virtual {v5, v10, v2}, LE1/A;->a(LE1/n;Z)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5}, LE1/A;->m()V

    .line 188
    .line 189
    .line 190
    iget-object v10, v5, LE1/A;->d:LE1/e0;

    .line 191
    .line 192
    iget-object v11, v10, LE1/e0;->d:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v11, Landroid/os/Handler;

    .line 195
    .line 196
    iget-object v10, v10, LE1/e0;->h:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v10, Ljava/lang/Runnable;

    .line 199
    .line 200
    invoke-virtual {v11, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    .line 202
    .line 203
    :cond_9
    if-eqz v8, :cond_a

    .line 204
    .line 205
    iget-boolean v8, v8, LE1/Q;->c:Z

    .line 206
    .line 207
    if-eqz v8, :cond_a

    .line 208
    .line 209
    const/4 v8, 0x1

    .line 210
    goto :goto_5

    .line 211
    :cond_a
    const/4 v8, 0x0

    .line 212
    :goto_5
    iget-boolean v10, v7, LE1/Q;->c:Z

    .line 213
    .line 214
    if-eq v8, v10, :cond_c

    .line 215
    .line 216
    iget-object v8, v5, LE1/A;->f:LE1/f;

    .line 217
    .line 218
    iget-object v10, v5, LE1/A;->z:LE1/i;

    .line 219
    .line 220
    iput-object v10, v8, LE1/n;->e:LE1/i;

    .line 221
    .line 222
    iget-boolean v10, v8, LE1/n;->f:Z

    .line 223
    .line 224
    if-nez v10, :cond_c

    .line 225
    .line 226
    iput-boolean v2, v8, LE1/n;->f:Z

    .line 227
    .line 228
    iget-object v8, v8, LE1/n;->c:Li0/a;

    .line 229
    .line 230
    invoke-virtual {v8, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 231
    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_b
    iget-object v8, v5, LE1/A;->f:LE1/f;

    .line 235
    .line 236
    if-eqz v8, :cond_c

    .line 237
    .line 238
    invoke-virtual {v5, v8}, LE1/A;->j(LE1/n;)V

    .line 239
    .line 240
    .line 241
    const/4 v8, 0x0

    .line 242
    iput-object v8, v5, LE1/A;->f:LE1/f;

    .line 243
    .line 244
    iget-object v8, v5, LE1/A;->d:LE1/e0;

    .line 245
    .line 246
    iget-object v10, v8, LE1/e0;->d:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v10, Landroid/os/Handler;

    .line 249
    .line 250
    iget-object v8, v8, LE1/e0;->h:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v8, Ljava/lang/Runnable;

    .line 253
    .line 254
    invoke-virtual {v10, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    .line 256
    .line 257
    :cond_c
    :goto_6
    iget-object v5, v5, LE1/A;->n:LE1/v;

    .line 258
    .line 259
    const/16 v8, 0x301

    .line 260
    .line 261
    invoke-virtual {v5, v8, v7}, LE1/v;->b(ILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    iget-boolean v5, v3, Lcom/google/android/gms/internal/cast/q;->L:Z

    .line 265
    .line 266
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    const/4 v8, 0x4

    .line 283
    new-array v8, v8, [Ljava/lang/Object;

    .line 284
    .line 285
    aput-object v5, v8, v1

    .line 286
    .line 287
    aput-object p1, v8, v2

    .line 288
    .line 289
    aput-object v7, v8, v0

    .line 290
    .line 291
    const/4 p1, 0x3

    .line 292
    aput-object v4, v8, p1

    .line 293
    .line 294
    const-string p1, "media transfer = %b, session transfer = %b, transfer to local = %b, in-app output switcher = %b"

    .line 295
    .line 296
    invoke-virtual {v6, p1, v8}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    iget-object v0, v6, LH3/b;->a:Ljava/lang/String;

    .line 301
    .line 302
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    if-eqz v9, :cond_d

    .line 306
    .line 307
    new-instance p1, Lcom/google/android/gms/internal/cast/p;

    .line 308
    .line 309
    iget-object v0, v3, Lcom/google/android/gms/internal/cast/q;->K:Lcom/google/android/gms/internal/cast/t;

    .line 310
    .line 311
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/cast/p;-><init>(Lcom/google/android/gms/internal/cast/t;)V

    .line 315
    .line 316
    .line 317
    invoke-static {}, LE1/H;->b()V

    .line 318
    .line 319
    .line 320
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    iput-object p1, v0, LE1/A;->B:LE1/B;

    .line 325
    .line 326
    sget-object p1, Lcom/google/android/gms/internal/cast/d0;->r0:Lcom/google/android/gms/internal/cast/d0;

    .line 327
    .line 328
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/D0;->a(Lcom/google/android/gms/internal/cast/d0;)V

    .line 329
    .line 330
    .line 331
    :cond_d
    :goto_7
    return-void
.end method

.method public final p(Lw2/l;)I
    .locals 1

    .line 1
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw2/o;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lw2/o;->p(Lw2/l;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final q()Z
    .locals 2

    .line 1
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, LY5/D;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    check-cast v0, LY5/D;

    .line 10
    .line 11
    iget-boolean v0, v0, LY5/D;->G:Z

    .line 12
    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    return v0
.end method

.method public final r()Z
    .locals 2

    .line 1
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aget v0, v0, v1

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    return v1
.end method

.method public final s(I)LF/i;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, LF/i;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, LI5/a;

    .line 6
    .line 7
    iget-object p1, p1, LI5/a;->c:LF/i;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, [I

    .line 17
    .line 18
    array-length v0, v0

    .line 19
    new-array v1, v0, [I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v0, :cond_2

    .line 23
    .line 24
    iget-object v3, p0, LF/i;->I:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, LI5/a;

    .line 27
    .line 28
    iget-object v4, p0, LF/i;->H:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v4, [I

    .line 31
    .line 32
    aget v4, v4, v2

    .line 33
    .line 34
    invoke-virtual {v3, v4, p1}, LI5/a;->b(II)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    aput v3, v1, v2

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance p1, LF/i;

    .line 44
    .line 45
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, LI5/a;

    .line 48
    .line 49
    invoke-direct {p1, v0, v1}, LF/i;-><init>(LI5/a;[I)V

    .line 50
    .line 51
    .line 52
    return-object p1
.end method

.method public final t(LF/i;)LF/i;
    .locals 12

    .line 1
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LI5/a;

    .line 4
    .line 5
    iget-object v1, p1, LF/i;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LI5/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0}, LF/i;->r()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p1}, LF/i;->r()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, [I

    .line 31
    .line 32
    array-length v1, v0

    .line 33
    iget-object p1, p1, LF/i;->H:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, [I

    .line 36
    .line 37
    array-length v2, p1

    .line 38
    add-int v3, v1, v2

    .line 39
    .line 40
    add-int/lit8 v3, v3, -0x1

    .line 41
    .line 42
    new-array v3, v3, [I

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    :goto_0
    if-ge v5, v1, :cond_2

    .line 47
    .line 48
    aget v6, v0, v5

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    :goto_1
    if-ge v7, v2, :cond_1

    .line 52
    .line 53
    add-int v8, v5, v7

    .line 54
    .line 55
    iget-object v9, p0, LF/i;->I:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v9, LI5/a;

    .line 58
    .line 59
    aget v10, v3, v8

    .line 60
    .line 61
    aget v11, p1, v7

    .line 62
    .line 63
    invoke-virtual {v9, v6, v11}, LI5/a;->b(II)I

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    add-int/2addr v11, v10

    .line 71
    rem-int/lit16 v11, v11, 0x3a1

    .line 72
    .line 73
    aput v11, v3, v8

    .line 74
    .line 75
    add-int/lit8 v7, v7, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    new-instance p1, LF/i;

    .line 82
    .line 83
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, LI5/a;

    .line 86
    .line 87
    invoke-direct {p1, v0, v3}, LF/i;-><init>(LI5/a;[I)V

    .line 88
    .line 89
    .line 90
    return-object p1

    .line 91
    :cond_3
    :goto_2
    iget-object p1, p0, LF/i;->I:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, LI5/a;

    .line 94
    .line 95
    iget-object p1, p1, LI5/a;->c:LF/i;

    .line 96
    .line 97
    return-object p1

    .line 98
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string v0, "ModulusPolys do not have same ModulusGF field"

    .line 101
    .line 102
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, LF/i;->G:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sparse-switch v0, :sswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-virtual {p0}, LF/i;->i()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    mul-int/lit8 v2, v2, 0x8

    .line 19
    .line 20
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, LF/i;->i()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :goto_0
    if-ltz v2, :cond_6

    .line 28
    .line 29
    invoke-virtual {p0, v2}, LF/i;->h(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_5

    .line 34
    .line 35
    if-gez v3, :cond_0

    .line 36
    .line 37
    const-string v4, " - "

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    neg-int v3, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-lez v4, :cond_1

    .line 49
    .line 50
    const-string v4, " + "

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 56
    .line 57
    if-eq v3, v1, :cond_3

    .line 58
    .line 59
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_3
    if-eqz v2, :cond_5

    .line 63
    .line 64
    if-ne v2, v1, :cond_4

    .line 65
    .line 66
    const/16 v3, 0x78

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    const-string v3, "x^"

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0

    .line 88
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v2, "GroupedLinkedMap( "

    .line 91
    .line 92
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, LF/i;->H:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v2, Lz2/f;

    .line 98
    .line 99
    iget-object v2, v2, Lz2/f;->c:Lz2/f;

    .line 100
    .line 101
    const/4 v3, 0x0

    .line 102
    const/4 v4, 0x0

    .line 103
    :goto_3
    iget-object v5, p0, LF/i;->H:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v5, Lz2/f;

    .line 106
    .line 107
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-nez v5, :cond_8

    .line 112
    .line 113
    const/16 v4, 0x7b

    .line 114
    .line 115
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v4, v2, Lz2/f;->a:Ljava/lang/Object;

    .line 119
    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const/16 v4, 0x3a

    .line 124
    .line 125
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v4, v2, Lz2/f;->b:Ljava/util/ArrayList;

    .line 129
    .line 130
    if-eqz v4, :cond_7

    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    goto :goto_4

    .line 137
    :cond_7
    const/4 v4, 0x0

    .line 138
    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v4, "}, "

    .line 142
    .line 143
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v2, v2, Lz2/f;->c:Lz2/f;

    .line 147
    .line 148
    const/4 v4, 0x1

    .line 149
    goto :goto_3

    .line 150
    :cond_8
    if-eqz v4, :cond_9

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    add-int/lit8 v1, v1, -0x2

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    :cond_9
    const-string v1, " )"

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    return-object v0

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public final u()LF/i;
    .locals 5

    .line 1
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    new-array v1, v0, [I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, LF/i;->I:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, LI5/a;

    .line 14
    .line 15
    iget-object v4, p0, LF/i;->H:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v4, [I

    .line 18
    .line 19
    aget v4, v4, v2

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    rsub-int v3, v4, 0x3a1

    .line 25
    .line 26
    rem-int/lit16 v3, v3, 0x3a1

    .line 27
    .line 28
    aput v3, v1, v2

    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, LF/i;

    .line 34
    .line 35
    iget-object v2, p0, LF/i;->I:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, LI5/a;

    .line 38
    .line 39
    invoke-direct {v0, v2, v1}, LF/i;-><init>(LI5/a;[I)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public final v(I)I
    .locals 2

    .line 1
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Z

    .line 4
    .line 5
    aget-boolean v0, v0, p1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, LW5/a;

    .line 19
    .line 20
    iget-object p1, p1, LW5/a;->H:Ljava/util/List;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    :goto_0
    add-int/2addr p1, v1

    .line 31
    return p1

    .line 32
    :cond_1
    return v1
.end method

.method public final w(Lz2/k;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lz2/f;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lz2/f;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lz2/f;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, v0, Lz2/f;->c:Lz2/f;

    .line 19
    .line 20
    iput-object v0, v0, Lz2/f;->d:Lz2/f;

    .line 21
    .line 22
    iget-object v1, p0, LF/i;->H:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lz2/f;

    .line 25
    .line 26
    iget-object v2, v1, Lz2/f;->d:Lz2/f;

    .line 27
    .line 28
    iput-object v2, v0, Lz2/f;->d:Lz2/f;

    .line 29
    .line 30
    iput-object v1, v0, Lz2/f;->c:Lz2/f;

    .line 31
    .line 32
    iput-object v0, v1, Lz2/f;->d:Lz2/f;

    .line 33
    .line 34
    iget-object v1, v0, Lz2/f;->d:Lz2/f;

    .line 35
    .line 36
    iput-object v0, v1, Lz2/f;->c:Lz2/f;

    .line 37
    .line 38
    iget-object v1, p0, LF/i;->I:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {p1}, Lz2/k;->a()V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-object p1, v0, Lz2/f;->b:Ljava/util/ArrayList;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    new-instance p1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, v0, Lz2/f;->b:Ljava/util/ArrayList;

    .line 59
    .line 60
    :cond_1
    iget-object p1, v0, Lz2/f;->b:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final x()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lz2/f;

    .line 4
    .line 5
    iget-object v0, v0, Lz2/f;->d:Lz2/f;

    .line 6
    .line 7
    :goto_0
    iget-object v1, p0, LF/i;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lz2/f;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    iget-object v1, v0, Lz2/f;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_1
    if-lez v1, :cond_1

    .line 29
    .line 30
    iget-object v2, v0, Lz2/f;->b:Ljava/util/ArrayList;

    .line 31
    .line 32
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :cond_1
    if-eqz v2, :cond_2

    .line 39
    .line 40
    return-object v2

    .line 41
    :cond_2
    iget-object v1, v0, Lz2/f;->d:Lz2/f;

    .line 42
    .line 43
    iget-object v2, v0, Lz2/f;->c:Lz2/f;

    .line 44
    .line 45
    iput-object v2, v1, Lz2/f;->c:Lz2/f;

    .line 46
    .line 47
    iget-object v2, v0, Lz2/f;->c:Lz2/f;

    .line 48
    .line 49
    iput-object v1, v2, Lz2/f;->d:Lz2/f;

    .line 50
    .line 51
    iget-object v1, p0, LF/i;->I:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Ljava/util/Map;

    .line 54
    .line 55
    iget-object v2, v0, Lz2/f;->a:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    check-cast v2, Lz2/k;

    .line 61
    .line 62
    invoke-interface {v2}, Lz2/k;->a()V

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lz2/f;->d:Lz2/f;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    return-object v2
.end method

.method public final y()V
    .locals 3

    .line 1
    iget-object v0, p0, LF/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final z(LF/i;)LF/i;
    .locals 2

    .line 1
    iget-object v0, p0, LF/i;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LI5/a;

    .line 4
    .line 5
    iget-object v1, p1, LF/i;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LI5/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, LF/i;->r()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    invoke-virtual {p1}, LF/i;->u()LF/i;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, LF/i;->a(LF/i;)LF/i;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v0, "ModulusPolys do not have same ModulusGF field"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method
