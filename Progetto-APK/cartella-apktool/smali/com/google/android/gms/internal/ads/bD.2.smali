.class public Lcom/google/android/gms/internal/ads/bD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/j;
.implements LZ3/W;
.implements Lc4/M0;
.implements Lc4/U;
.implements Lg4/d;


# static fields
.field public static K:Lcom/google/android/gms/internal/ads/bD;


# instance fields
.field public final synthetic G:I

.field public H:Ljava/lang/Object;

.field public I:Ljava/lang/Object;

.field public J:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    iput p1, p0, Lcom/google/android/gms/internal/ads/bD;->G:I

    const/16 v0, 0xb

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/16 v0, 0x15

    if-eq p1, v0, :cond_3

    const/16 v0, 0x16

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 32
    sget-object p1, Lcom/google/android/gms/internal/ads/gE;->b:Lcom/google/android/gms/internal/ads/gE;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    return-void

    .line 33
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 35
    sget-object p1, LY5/c;->b:LY5/c;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    return-void

    .line 36
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object p1, LY5/c;->b:LY5/c;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    return-void

    .line 38
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 39
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 40
    :cond_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/measurement/b;

    const-string v0, ""

    const-wide/16 v2, 0x0

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/b;-><init>(Ljava/lang/String;JLjava/util/HashMap;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/measurement/b;

    .line 41
    invoke-direct {p1, v0, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/b;-><init>(Ljava/lang/String;JLjava/util/HashMap;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    .line 42
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/bD;->G:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/bD;->G:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc4/l0;)V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd

    .line 44
    iput v0, p0, Lcom/google/android/gms/internal/ads/bD;->G:I

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/google/android/gms/common/internal/v;

    const-string v1, "measurement:api"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/v;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v1, LN3/b;

    .line 48
    sget-object v2, LN3/b;->a:Lcom/google/android/gms/common/api/g;

    sget-object v3, Lcom/google/android/gms/common/api/i;->c:Lcom/google/android/gms/common/api/i;

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/google/android/gms/common/api/j;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/i;)V

    .line 49
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lc4/A1;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/google/android/gms/internal/ads/bD;->G:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/O;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/bD;->G:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/b;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    .line 61
    iput v0, p0, Lcom/google/android/gms/internal/ads/bD;->G:I

    .line 62
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b;->a()Lcom/google/android/gms/internal/measurement/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    .line 63
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/bD;->G:I

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/ads/QE;->e:Lcom/google/android/gms/internal/ads/QE;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/google/android/gms/internal/ads/bD;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw5/a;)V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    .line 65
    iput v0, p0, Lcom/google/android/gms/internal/ads/bD;->G:I

    .line 66
    new-instance v0, LK/k;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LK/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw5/b;)V
    .locals 17

    .line 11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x17

    .line 13
    iput v2, v0, Lcom/google/android/gms/internal/ads/bD;->G:I

    const/16 v2, 0x8

    .line 14
    iget v3, v1, Lw5/b;->H:I

    if-lt v3, v2, :cond_9

    const/16 v2, 0x90

    if-gt v3, v2, :cond_9

    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_9

    .line 15
    sget-object v4, Lz5/d;->h:[Lz5/d;

    if-nez v2, :cond_8

    .line 16
    iget v2, v1, Lw5/b;->G:I

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_8

    .line 17
    sget-object v4, Lz5/d;->h:[Lz5/d;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_7

    aget-object v8, v4, v7

    .line 18
    iget v9, v8, Lz5/d;->b:I

    if-ne v9, v3, :cond_6

    iget v10, v8, Lz5/d;->c:I

    if-ne v10, v2, :cond_6

    .line 19
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    if-ne v3, v9, :cond_5

    .line 20
    iget v2, v8, Lz5/d;->d:I

    div-int/2addr v9, v2

    .line 21
    iget v3, v8, Lz5/d;->e:I

    div-int/2addr v10, v3

    mul-int v4, v9, v2

    mul-int v5, v10, v3

    .line 22
    new-instance v7, Lw5/b;

    invoke-direct {v7, v5, v4}, Lw5/b;-><init>(II)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_4

    mul-int v5, v4, v2

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v10, :cond_3

    mul-int v11, v8, v3

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v2, :cond_2

    add-int/lit8 v13, v2, 0x2

    mul-int v13, v13, v4

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v13, v12

    add-int v14, v5, v12

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v3, :cond_1

    add-int/lit8 v16, v3, 0x2

    mul-int v16, v16, v8

    add-int/lit8 v16, v16, 0x1

    add-int v6, v16, v15

    .line 23
    invoke-virtual {v1, v6, v13}, Lw5/b;->b(II)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int v6, v11, v15

    .line 24
    invoke-virtual {v7, v6, v14}, Lw5/b;->f(II)V

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 25
    :cond_4
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 26
    new-instance v1, Lw5/b;

    iget v2, v7, Lw5/b;->G:I

    iget v3, v7, Lw5/b;->H:I

    invoke-direct {v1, v2, v3}, Lw5/b;-><init>(II)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    return-void

    .line 27
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Dimension of bitMatrix must match the version size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 28
    :cond_7
    invoke-static {}, Lq5/e;->a()Lq5/e;

    move-result-object v1

    throw v1

    .line 29
    :cond_8
    invoke-static {}, Lq5/e;->a()Lq5/e;

    move-result-object v1

    throw v1

    .line 30
    :cond_9
    invoke-static {}, Lq5/e;->a()Lq5/e;

    move-result-object v1

    throw v1
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/ads/ti;)V
    .locals 5

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 51
    iput v0, p0, Lcom/google/android/gms/internal/ads/bD;->G:I

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/ads/qM;

    .line 53
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Hi;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/qM;->m:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/qM;->o:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/qM;->p:I

    .line 54
    sget-object v2, Lcom/google/android/gms/internal/ads/Et;->f:[B

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/qM;->q:[B

    .line 55
    new-instance v2, Lcom/google/android/gms/internal/ads/Ti;

    .line 56
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/google/android/gms/internal/ads/Ti;->c:F

    iput v3, v2, Lcom/google/android/gms/internal/ads/Ti;->d:F

    sget-object v3, Lcom/google/android/gms/internal/ads/Th;->e:Lcom/google/android/gms/internal/ads/Th;

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/Ti;->e:Lcom/google/android/gms/internal/ads/Th;

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/Ti;->f:Lcom/google/android/gms/internal/ads/Th;

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/Ti;->g:Lcom/google/android/gms/internal/ads/Th;

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/Ti;->h:Lcom/google/android/gms/internal/ads/Th;

    sget-object v3, Lcom/google/android/gms/internal/ads/ti;->a:Ljava/nio/ByteBuffer;

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/Ti;->k:Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/ads/Ti;->l:Ljava/nio/ShortBuffer;

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/Ti;->m:Ljava/nio/ByteBuffer;

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/android/gms/internal/ads/Ti;->b:I

    const/4 v3, 0x2

    .line 58
    new-array v3, v3, [Lcom/google/android/gms/internal/ads/ti;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    check-cast v3, [Lcom/google/android/gms/internal/ads/ti;

    .line 59
    invoke-static {p1, v1, v3, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    check-cast p1, [Lcom/google/android/gms/internal/ads/ti;

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object v2, p1, v0

    return-void
.end method

.method public static g(IILw5/a;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v0, p1, :cond_1

    .line 4
    .line 5
    add-int v2, p0, v0

    .line 6
    .line 7
    invoke-virtual {p2, v2}, Lw5/a;->d(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    sub-int v2, p1, v0

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    sub-int/2addr v2, v3

    .line 17
    shl-int v2, v3, v2

    .line 18
    .line 19
    or-int/2addr v1, v2

    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 9

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/bD;->G:I

    .line 2
    .line 3
    const/4 p5, 0x0

    .line 4
    const/16 v0, 0xcc

    .line 5
    .line 6
    const/16 v1, 0xc8

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lc4/C1;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Lc4/A1;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/google/protobuf/U2;->t(Lc4/A1;)V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    if-nez p4, :cond_0

    .line 28
    .line 29
    :try_start_0
    new-array p4, v4, [B

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    :goto_0
    if-eq p2, v1, :cond_1

    .line 36
    .line 37
    if-ne p2, v0, :cond_3

    .line 38
    .line 39
    const/16 p2, 0xcc

    .line 40
    .line 41
    :cond_1
    if-nez p3, :cond_3

    .line 42
    .line 43
    iget-object p3, v2, Lc4/A1;->I:Lc4/o;

    .line 44
    .line 45
    invoke-static {p3}, Lc4/A1;->I(Lc4/u1;)V

    .line 46
    .line 47
    .line 48
    iget-wide v0, p1, Lc4/C1;->a:J

    .line 49
    .line 50
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p3, p1}, Lc4/o;->B(Ljava/lang/Long;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lc4/A1;->b()Lc4/T;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object p1, p1, Lc4/T;->T:Lc4/Q;

    .line 62
    .line 63
    const-string p3, "Successfully uploaded batch from upload queue. appId, status"

    .line 64
    .line 65
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p1, v3, p2, p3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Lc4/A1;->c0()Lc4/h;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget-object p2, Lc4/E;->N0:Lc4/D;

    .line 77
    .line 78
    invoke-virtual {p1, p5, p2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    iget-object p1, v2, Lc4/A1;->H:Lc4/W;

    .line 85
    .line 86
    invoke-static {p1}, Lc4/A1;->I(Lc4/u1;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lc4/W;->r()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    iget-object p1, v2, Lc4/A1;->I:Lc4/o;

    .line 96
    .line 97
    invoke-static {p1}, Lc4/A1;->I(Lc4/u1;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v3}, Lc4/o;->M(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Lc4/A1;->V(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {v2}, Lc4/A1;->C()V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    new-instance p5, Ljava/lang/String;

    .line 115
    .line 116
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 117
    .line 118
    invoke-direct {p5, p4, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result p4

    .line 125
    const/16 v0, 0x20

    .line 126
    .line 127
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    .line 128
    .line 129
    .line 130
    move-result p4

    .line 131
    invoke-virtual {p5, v4, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    invoke-virtual {v2}, Lc4/A1;->b()Lc4/T;

    .line 136
    .line 137
    .line 138
    move-result-object p5

    .line 139
    iget-object p5, p5, Lc4/T;->Q:Lc4/Q;

    .line 140
    .line 141
    const-string v0, "Network upload failed. Will retry later. appId, status, error"

    .line 142
    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    if-nez p3, :cond_4

    .line 148
    .line 149
    move-object p3, p4

    .line 150
    :cond_4
    invoke-virtual {p5, v3, p2, p3, v0}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object p2, v2, Lc4/A1;->I:Lc4/o;

    .line 154
    .line 155
    invoke-static {p2}, Lc4/A1;->I(Lc4/u1;)V

    .line 156
    .line 157
    .line 158
    iget-wide p3, p1, Lc4/C1;->a:J

    .line 159
    .line 160
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p2, p1}, Lc4/o;->E(Ljava/lang/Long;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Lc4/A1;->C()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .line 169
    .line 170
    :goto_1
    iput-boolean v4, v2, Lc4/A1;->a0:Z

    .line 171
    .line 172
    invoke-virtual {v2}, Lc4/A1;->z()V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :goto_2
    iput-boolean v4, v2, Lc4/A1;->a0:Z

    .line 177
    .line 178
    invoke-virtual {v2}, Lc4/A1;->z()V

    .line 179
    .line 180
    .line 181
    throw p1

    .line 182
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 183
    .line 184
    move-object v0, p1

    .line 185
    check-cast v0, Lc4/A1;

    .line 186
    .line 187
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 188
    .line 189
    move-object v5, p1

    .line 190
    check-cast v5, Ljava/lang/String;

    .line 191
    .line 192
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 193
    .line 194
    move-object v6, p1

    .line 195
    check-cast v6, Ljava/util/List;

    .line 196
    .line 197
    const/4 v1, 0x1

    .line 198
    move v2, p2

    .line 199
    move-object v3, p3

    .line 200
    move-object v4, p4

    .line 201
    invoke-virtual/range {v0 .. v6}, Lc4/A1;->r(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast p1, Lc4/K0;

    .line 208
    .line 209
    invoke-virtual {p1}, Lc4/z;->m()V

    .line 210
    .line 211
    .line 212
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast p4, Lc4/r1;

    .line 215
    .line 216
    if-eq p2, v1, :cond_5

    .line 217
    .line 218
    if-eq p2, v0, :cond_5

    .line 219
    .line 220
    const/16 v0, 0x130

    .line 221
    .line 222
    if-ne p2, v0, :cond_6

    .line 223
    .line 224
    const/16 p2, 0x130

    .line 225
    .line 226
    :cond_5
    if-nez p3, :cond_6

    .line 227
    .line 228
    iget-object p2, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast p2, Lc4/l0;

    .line 231
    .line 232
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 233
    .line 234
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 235
    .line 236
    .line 237
    iget-object p2, p2, Lc4/T;->T:Lc4/Q;

    .line 238
    .line 239
    iget-wide v0, p4, Lc4/r1;->G:J

    .line 240
    .line 241
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 242
    .line 243
    .line 244
    move-result-object p3

    .line 245
    const-string p5, "[sgtm] Upload succeeded for row_id"

    .line 246
    .line 247
    invoke-virtual {p2, p3, p5}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    sget-object p2, Lc4/Q0;->I:Lc4/Q0;

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_6
    iget-object v0, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v0, Lc4/l0;

    .line 256
    .line 257
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 258
    .line 259
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 260
    .line 261
    .line 262
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 263
    .line 264
    iget-wide v1, p4, Lc4/r1;->G:J

    .line 265
    .line 266
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    const-string v3, "[sgtm] Upload failed for row_id. response, exception"

    .line 275
    .line 276
    invoke-virtual {v0, v1, v2, p3, v3}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    sget-object p3, Lc4/E;->u:Lc4/D;

    .line 280
    .line 281
    invoke-virtual {p3, p5}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object p3

    .line 285
    check-cast p3, Ljava/lang/String;

    .line 286
    .line 287
    const-string p5, ","

    .line 288
    .line 289
    invoke-virtual {p3, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p3

    .line 293
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object p3

    .line 297
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result p2

    .line 305
    if-eqz p2, :cond_7

    .line 306
    .line 307
    sget-object p2, Lc4/Q0;->K:Lc4/Q0;

    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_7
    sget-object p2, Lc4/Q0;->J:Lc4/Q0;

    .line 311
    .line 312
    :goto_3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast p3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 315
    .line 316
    iget-object p5, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast p5, Lc4/l0;

    .line 319
    .line 320
    invoke-virtual {p5}, Lc4/l0;->r()Lc4/d1;

    .line 321
    .line 322
    .line 323
    move-result-object p5

    .line 324
    new-instance v6, Lc4/e;

    .line 325
    .line 326
    iget-wide v7, p4, Lc4/r1;->G:J

    .line 327
    .line 328
    iget v1, p2, Lc4/Q0;->G:I

    .line 329
    .line 330
    iget-wide v4, p4, Lc4/r1;->L:J

    .line 331
    .line 332
    move-object v0, v6

    .line 333
    move-wide v2, v7

    .line 334
    invoke-direct/range {v0 .. v5}, Lc4/e;-><init>(IJJ)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p5}, Lc4/z;->m()V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p5}, Lc4/B;->n()V

    .line 341
    .line 342
    .line 343
    const/4 p4, 0x1

    .line 344
    invoke-virtual {p5, p4}, Lc4/d1;->B(Z)Lc4/J1;

    .line 345
    .line 346
    .line 347
    move-result-object p4

    .line 348
    new-instance v0, LZ3/v;

    .line 349
    .line 350
    const/16 v1, 0x8

    .line 351
    .line 352
    invoke-direct {v0, p5, p4, v6, v1}, LZ3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p5, v0}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 356
    .line 357
    .line 358
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast p1, Lc4/l0;

    .line 361
    .line 362
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 363
    .line 364
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 365
    .line 366
    .line 367
    iget-object p1, p1, Lc4/T;->T:Lc4/Q;

    .line 368
    .line 369
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 370
    .line 371
    .line 372
    move-result-object p4

    .line 373
    const-string p5, "[sgtm] Updated status for row_id"

    .line 374
    .line 375
    invoke-virtual {p1, p4, p2, p5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    monitor-enter p3

    .line 379
    :try_start_1
    invoke-virtual {p3, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 383
    .line 384
    .line 385
    monitor-exit p3

    .line 386
    return-void

    .line 387
    :catchall_1
    move-exception p1

    .line 388
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 389
    throw p1

    .line 390
    nop

    .line 391
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lt/i;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/p;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v3, v1

    .line 8
    check-cast v3, LE1/F;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v4, v1

    .line 13
    check-cast v4, LE1/F;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v8, Lk/g;

    .line 19
    .line 20
    const/16 v6, 0x8

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    move-object v1, v8

    .line 24
    move-object v2, v0

    .line 25
    move-object v5, p1

    .line 26
    invoke-direct/range {v1 .. v7}, Lk/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/p;->b:LX3/d;

    .line 30
    .line 31
    invoke-virtual {p1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public final c(ILjava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/bD;->d(ILjava/lang/String;)LF5/j;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v1, LF5/j;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v2}, LF5/l;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-boolean v2, v1, LF5/j;->e:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget v2, v1, LF5/j;->d:I

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v2, v0

    .line 30
    :goto_1
    iget v1, v1, Lq0/e;->b:I

    .line 31
    .line 32
    if-eq p1, v1, :cond_2

    .line 33
    .line 34
    move p1, v1

    .line 35
    move-object v1, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/bD;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/bD;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lcom/google/android/gms/internal/measurement/b;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/b;->a()Lcom/google/android/gms/internal/measurement/b;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/bD;-><init>(Lcom/google/android/gms/internal/measurement/b;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/google/android/gms/internal/measurement/b;

    .line 43
    .line 44
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Ljava/util/List;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/b;->a()Lcom/google/android/gms/internal/measurement/b;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-object v0

    .line 57
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public final d(ILjava/lang/String;)LF5/j;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 11
    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, LK/k;

    .line 25
    .line 26
    move/from16 v2, p1

    .line 27
    .line 28
    iput v2, v1, LK/k;->H:I

    .line 29
    .line 30
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, LK/k;

    .line 33
    .line 34
    iget v2, v1, LK/k;->H:I

    .line 35
    .line 36
    iget-object v1, v1, LK/k;->I:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, LF5/h;

    .line 39
    .line 40
    sget-object v4, LF5/h;->H:LF5/h;

    .line 41
    .line 42
    sget-object v5, LF5/h;->I:LF5/h;

    .line 43
    .line 44
    sget-object v6, LF5/h;->G:LF5/h;

    .line 45
    .line 46
    const/16 v7, 0x24

    .line 47
    .line 48
    const/4 v8, 0x1

    .line 49
    const/4 v9, 0x5

    .line 50
    const/16 v15, 0x3a

    .line 51
    .line 52
    const/16 v10, 0x20

    .line 53
    .line 54
    const/16 v11, 0xf

    .line 55
    .line 56
    const/16 v12, 0x3f

    .line 57
    .line 58
    const/16 v13, 0x10

    .line 59
    .line 60
    if-ne v1, v4, :cond_d

    .line 61
    .line 62
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, LK/k;

    .line 65
    .line 66
    iget v1, v1, LK/k;->H:I

    .line 67
    .line 68
    add-int/lit8 v4, v1, 0x5

    .line 69
    .line 70
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v3, Lw5/a;

    .line 73
    .line 74
    iget v3, v3, Lw5/a;->H:I

    .line 75
    .line 76
    if-le v4, v3, :cond_2

    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_2
    invoke-virtual {v0, v1, v9}, Lcom/google/android/gms/internal/ads/bD;->f(II)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    const/4 v4, 0x6

    .line 85
    if-lt v3, v9, :cond_3

    .line 86
    .line 87
    if-ge v3, v13, :cond_3

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    add-int/lit8 v3, v1, 0x6

    .line 91
    .line 92
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v14, Lw5/a;

    .line 95
    .line 96
    iget v14, v14, Lw5/a;->H:I

    .line 97
    .line 98
    if-le v3, v14, :cond_4

    .line 99
    .line 100
    goto/16 :goto_5

    .line 101
    .line 102
    :cond_4
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/bD;->f(II)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-lt v1, v13, :cond_9

    .line 107
    .line 108
    if-ge v1, v12, :cond_9

    .line 109
    .line 110
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v1, LK/k;

    .line 113
    .line 114
    iget v1, v1, LK/k;->H:I

    .line 115
    .line 116
    invoke-virtual {v0, v1, v9}, Lcom/google/android/gms/internal/ads/bD;->f(II)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-ne v3, v11, :cond_5

    .line 121
    .line 122
    new-instance v3, LF5/i;

    .line 123
    .line 124
    add-int/lit8 v1, v1, 0x5

    .line 125
    .line 126
    invoke-direct {v3, v7, v1}, LF5/i;-><init>(CI)V

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_5
    if-lt v3, v9, :cond_6

    .line 131
    .line 132
    if-ge v3, v11, :cond_6

    .line 133
    .line 134
    new-instance v4, LF5/i;

    .line 135
    .line 136
    add-int/lit8 v1, v1, 0x5

    .line 137
    .line 138
    add-int/lit8 v3, v3, 0x2b

    .line 139
    .line 140
    int-to-char v3, v3

    .line 141
    invoke-direct {v4, v3, v1}, LF5/i;-><init>(CI)V

    .line 142
    .line 143
    .line 144
    :goto_2
    move-object v3, v4

    .line 145
    goto :goto_4

    .line 146
    :cond_6
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/bD;->f(II)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-lt v3, v10, :cond_7

    .line 151
    .line 152
    if-ge v3, v15, :cond_7

    .line 153
    .line 154
    new-instance v4, LF5/i;

    .line 155
    .line 156
    add-int/lit8 v1, v1, 0x6

    .line 157
    .line 158
    add-int/lit8 v3, v3, 0x21

    .line 159
    .line 160
    int-to-char v3, v3

    .line 161
    invoke-direct {v4, v3, v1}, LF5/i;-><init>(CI)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_7
    packed-switch v3, :pswitch_data_0

    .line 166
    .line 167
    .line 168
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 169
    .line 170
    const-string v2, "Decoding invalid alphanumeric value: "

    .line 171
    .line 172
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v1

    .line 184
    :pswitch_0
    const/16 v3, 0x2f

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :pswitch_1
    const/16 v3, 0x2e

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :pswitch_2
    const/16 v3, 0x2d

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :pswitch_3
    const/16 v3, 0x2c

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :pswitch_4
    const/16 v3, 0x2a

    .line 197
    .line 198
    :goto_3
    new-instance v4, LF5/i;

    .line 199
    .line 200
    add-int/lit8 v1, v1, 0x6

    .line 201
    .line 202
    invoke-direct {v4, v3, v1}, LF5/i;-><init>(CI)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :goto_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 207
    .line 208
    move-object v4, v1

    .line 209
    check-cast v4, LK/k;

    .line 210
    .line 211
    iget v14, v3, Lq0/e;->b:I

    .line 212
    .line 213
    iput v14, v4, LK/k;->H:I

    .line 214
    .line 215
    iget-char v3, v3, LF5/i;->c:C

    .line 216
    .line 217
    if-ne v3, v7, :cond_8

    .line 218
    .line 219
    new-instance v3, LF5/j;

    .line 220
    .line 221
    check-cast v1, LK/k;

    .line 222
    .line 223
    iget v1, v1, LK/k;->H:I

    .line 224
    .line 225
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v4, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-direct {v3, v1, v4}, LF5/j;-><init>(ILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    new-instance v1, LP0/j;

    .line 237
    .line 238
    invoke-direct {v1, v3, v8}, LP0/j;-><init>(Ljava/lang/Object;Z)V

    .line 239
    .line 240
    .line 241
    goto :goto_8

    .line 242
    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v1, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const/4 v3, 0x0

    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_9
    :goto_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v1, LK/k;

    .line 255
    .line 256
    iget v1, v1, LK/k;->H:I

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bD;->h(I)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_a

    .line 263
    .line 264
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 265
    .line 266
    move-object v3, v1

    .line 267
    check-cast v3, LK/k;

    .line 268
    .line 269
    iget v4, v3, LK/k;->H:I

    .line 270
    .line 271
    add-int/lit8 v4, v4, 0x3

    .line 272
    .line 273
    iput v4, v3, LK/k;->H:I

    .line 274
    .line 275
    check-cast v1, LK/k;

    .line 276
    .line 277
    iput-object v6, v1, LK/k;->I:Ljava/lang/Object;

    .line 278
    .line 279
    goto :goto_7

    .line 280
    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v1, LK/k;

    .line 283
    .line 284
    iget v1, v1, LK/k;->H:I

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bD;->i(I)Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_c

    .line 291
    .line 292
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 293
    .line 294
    move-object v3, v1

    .line 295
    check-cast v3, LK/k;

    .line 296
    .line 297
    iget v4, v3, LK/k;->H:I

    .line 298
    .line 299
    add-int/lit8 v6, v4, 0x5

    .line 300
    .line 301
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v7, Lw5/a;

    .line 304
    .line 305
    iget v7, v7, Lw5/a;->H:I

    .line 306
    .line 307
    if-ge v6, v7, :cond_b

    .line 308
    .line 309
    add-int/lit8 v4, v4, 0x5

    .line 310
    .line 311
    iput v4, v3, LK/k;->H:I

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_b
    iput v7, v3, LK/k;->H:I

    .line 315
    .line 316
    :goto_6
    check-cast v1, LK/k;

    .line 317
    .line 318
    iput-object v5, v1, LK/k;->I:Ljava/lang/Object;

    .line 319
    .line 320
    :cond_c
    :goto_7
    new-instance v1, LP0/j;

    .line 321
    .line 322
    const/4 v3, 0x0

    .line 323
    const/4 v4, 0x0

    .line 324
    invoke-direct {v1, v4, v3}, LP0/j;-><init>(Ljava/lang/Object;Z)V

    .line 325
    .line 326
    .line 327
    :goto_8
    iget-boolean v3, v1, LP0/j;->G:Z

    .line 328
    .line 329
    :goto_9
    move v4, v3

    .line 330
    const/4 v3, 0x0

    .line 331
    goto/16 :goto_1c

    .line 332
    .line 333
    :cond_d
    const/16 v3, 0x8

    .line 334
    .line 335
    const/4 v14, 0x7

    .line 336
    if-ne v1, v5, :cond_1c

    .line 337
    .line 338
    :goto_a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v1, LK/k;

    .line 341
    .line 342
    iget v1, v1, LK/k;->H:I

    .line 343
    .line 344
    add-int/lit8 v5, v1, 0x5

    .line 345
    .line 346
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast v10, Lw5/a;

    .line 349
    .line 350
    iget v10, v10, Lw5/a;->H:I

    .line 351
    .line 352
    if-le v5, v10, :cond_e

    .line 353
    .line 354
    goto/16 :goto_f

    .line 355
    .line 356
    :cond_e
    invoke-virtual {v0, v1, v9}, Lcom/google/android/gms/internal/ads/bD;->f(II)I

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    const/16 v10, 0x74

    .line 361
    .line 362
    const/16 v12, 0x40

    .line 363
    .line 364
    if-lt v5, v9, :cond_f

    .line 365
    .line 366
    if-ge v5, v13, :cond_f

    .line 367
    .line 368
    goto :goto_b

    .line 369
    :cond_f
    add-int/lit8 v5, v1, 0x7

    .line 370
    .line 371
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v13, Lw5/a;

    .line 374
    .line 375
    iget v13, v13, Lw5/a;->H:I

    .line 376
    .line 377
    if-le v5, v13, :cond_10

    .line 378
    .line 379
    goto/16 :goto_f

    .line 380
    .line 381
    :cond_10
    invoke-virtual {v0, v1, v14}, Lcom/google/android/gms/internal/ads/bD;->f(II)I

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    if-lt v5, v12, :cond_11

    .line 386
    .line 387
    if-ge v5, v10, :cond_11

    .line 388
    .line 389
    goto :goto_b

    .line 390
    :cond_11
    add-int/lit8 v5, v1, 0x8

    .line 391
    .line 392
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast v13, Lw5/a;

    .line 395
    .line 396
    iget v13, v13, Lw5/a;->H:I

    .line 397
    .line 398
    if-le v5, v13, :cond_12

    .line 399
    .line 400
    goto/16 :goto_f

    .line 401
    .line 402
    :cond_12
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/bD;->f(II)I

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    const/16 v5, 0xe8

    .line 407
    .line 408
    if-lt v1, v5, :cond_18

    .line 409
    .line 410
    const/16 v5, 0xfd

    .line 411
    .line 412
    if-ge v1, v5, :cond_18

    .line 413
    .line 414
    :goto_b
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast v1, LK/k;

    .line 417
    .line 418
    iget v1, v1, LK/k;->H:I

    .line 419
    .line 420
    invoke-virtual {v0, v1, v9}, Lcom/google/android/gms/internal/ads/bD;->f(II)I

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    if-ne v5, v11, :cond_13

    .line 425
    .line 426
    new-instance v5, LF5/i;

    .line 427
    .line 428
    add-int/lit8 v1, v1, 0x5

    .line 429
    .line 430
    invoke-direct {v5, v7, v1}, LF5/i;-><init>(CI)V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_e

    .line 434
    .line 435
    :cond_13
    if-lt v5, v9, :cond_14

    .line 436
    .line 437
    if-ge v5, v11, :cond_14

    .line 438
    .line 439
    new-instance v10, LF5/i;

    .line 440
    .line 441
    add-int/lit8 v1, v1, 0x5

    .line 442
    .line 443
    add-int/lit8 v5, v5, 0x2b

    .line 444
    .line 445
    int-to-char v5, v5

    .line 446
    invoke-direct {v10, v5, v1}, LF5/i;-><init>(CI)V

    .line 447
    .line 448
    .line 449
    :goto_c
    move-object v5, v10

    .line 450
    goto/16 :goto_e

    .line 451
    .line 452
    :cond_14
    invoke-virtual {v0, v1, v14}, Lcom/google/android/gms/internal/ads/bD;->f(II)I

    .line 453
    .line 454
    .line 455
    move-result v5

    .line 456
    const/16 v13, 0x5a

    .line 457
    .line 458
    if-lt v5, v12, :cond_15

    .line 459
    .line 460
    if-ge v5, v13, :cond_15

    .line 461
    .line 462
    new-instance v10, LF5/i;

    .line 463
    .line 464
    add-int/lit8 v1, v1, 0x7

    .line 465
    .line 466
    add-int/lit8 v5, v5, 0x1

    .line 467
    .line 468
    int-to-char v5, v5

    .line 469
    invoke-direct {v10, v5, v1}, LF5/i;-><init>(CI)V

    .line 470
    .line 471
    .line 472
    goto :goto_c

    .line 473
    :cond_15
    if-lt v5, v13, :cond_16

    .line 474
    .line 475
    if-ge v5, v10, :cond_16

    .line 476
    .line 477
    new-instance v10, LF5/i;

    .line 478
    .line 479
    add-int/lit8 v1, v1, 0x7

    .line 480
    .line 481
    add-int/lit8 v5, v5, 0x7

    .line 482
    .line 483
    int-to-char v5, v5

    .line 484
    invoke-direct {v10, v5, v1}, LF5/i;-><init>(CI)V

    .line 485
    .line 486
    .line 487
    goto :goto_c

    .line 488
    :cond_16
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/bD;->f(II)I

    .line 489
    .line 490
    .line 491
    move-result v5

    .line 492
    packed-switch v5, :pswitch_data_1

    .line 493
    .line 494
    .line 495
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    throw v1

    .line 500
    :pswitch_5
    const/16 v5, 0x20

    .line 501
    .line 502
    goto :goto_d

    .line 503
    :pswitch_6
    const/16 v5, 0x5f

    .line 504
    .line 505
    goto :goto_d

    .line 506
    :pswitch_7
    const/16 v5, 0x3f

    .line 507
    .line 508
    goto :goto_d

    .line 509
    :pswitch_8
    const/16 v5, 0x3e

    .line 510
    .line 511
    goto :goto_d

    .line 512
    :pswitch_9
    const/16 v5, 0x3d

    .line 513
    .line 514
    goto :goto_d

    .line 515
    :pswitch_a
    const/16 v5, 0x3c

    .line 516
    .line 517
    goto :goto_d

    .line 518
    :pswitch_b
    const/16 v5, 0x3b

    .line 519
    .line 520
    goto :goto_d

    .line 521
    :pswitch_c
    const/16 v5, 0x3a

    .line 522
    .line 523
    goto :goto_d

    .line 524
    :pswitch_d
    const/16 v5, 0x2f

    .line 525
    .line 526
    goto :goto_d

    .line 527
    :pswitch_e
    const/16 v5, 0x2e

    .line 528
    .line 529
    goto :goto_d

    .line 530
    :pswitch_f
    const/16 v5, 0x2d

    .line 531
    .line 532
    goto :goto_d

    .line 533
    :pswitch_10
    const/16 v5, 0x2c

    .line 534
    .line 535
    goto :goto_d

    .line 536
    :pswitch_11
    const/16 v5, 0x2b

    .line 537
    .line 538
    goto :goto_d

    .line 539
    :pswitch_12
    const/16 v5, 0x2a

    .line 540
    .line 541
    goto :goto_d

    .line 542
    :pswitch_13
    const/16 v5, 0x29

    .line 543
    .line 544
    goto :goto_d

    .line 545
    :pswitch_14
    const/16 v5, 0x28

    .line 546
    .line 547
    goto :goto_d

    .line 548
    :pswitch_15
    const/16 v5, 0x27

    .line 549
    .line 550
    goto :goto_d

    .line 551
    :pswitch_16
    const/16 v5, 0x26

    .line 552
    .line 553
    goto :goto_d

    .line 554
    :pswitch_17
    const/16 v5, 0x25

    .line 555
    .line 556
    goto :goto_d

    .line 557
    :pswitch_18
    const/16 v5, 0x22

    .line 558
    .line 559
    goto :goto_d

    .line 560
    :pswitch_19
    const/16 v5, 0x21

    .line 561
    .line 562
    :goto_d
    new-instance v10, LF5/i;

    .line 563
    .line 564
    add-int/lit8 v1, v1, 0x8

    .line 565
    .line 566
    invoke-direct {v10, v5, v1}, LF5/i;-><init>(CI)V

    .line 567
    .line 568
    .line 569
    goto :goto_c

    .line 570
    :goto_e
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 571
    .line 572
    move-object v10, v1

    .line 573
    check-cast v10, LK/k;

    .line 574
    .line 575
    iget v12, v5, Lq0/e;->b:I

    .line 576
    .line 577
    iput v12, v10, LK/k;->H:I

    .line 578
    .line 579
    iget-char v5, v5, LF5/i;->c:C

    .line 580
    .line 581
    if-ne v5, v7, :cond_17

    .line 582
    .line 583
    new-instance v3, LF5/j;

    .line 584
    .line 585
    check-cast v1, LK/k;

    .line 586
    .line 587
    iget v1, v1, LK/k;->H:I

    .line 588
    .line 589
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v4, Ljava/lang/StringBuilder;

    .line 592
    .line 593
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    invoke-direct {v3, v1, v4}, LF5/j;-><init>(ILjava/lang/String;)V

    .line 598
    .line 599
    .line 600
    new-instance v1, LP0/j;

    .line 601
    .line 602
    invoke-direct {v1, v3, v8}, LP0/j;-><init>(Ljava/lang/Object;Z)V

    .line 603
    .line 604
    .line 605
    goto :goto_12

    .line 606
    :cond_17
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 607
    .line 608
    check-cast v1, Ljava/lang/StringBuilder;

    .line 609
    .line 610
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    const/16 v10, 0x20

    .line 614
    .line 615
    const/16 v12, 0x3f

    .line 616
    .line 617
    const/16 v13, 0x10

    .line 618
    .line 619
    goto/16 :goto_a

    .line 620
    .line 621
    :cond_18
    :goto_f
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 622
    .line 623
    check-cast v1, LK/k;

    .line 624
    .line 625
    iget v1, v1, LK/k;->H:I

    .line 626
    .line 627
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bD;->h(I)Z

    .line 628
    .line 629
    .line 630
    move-result v1

    .line 631
    if-eqz v1, :cond_19

    .line 632
    .line 633
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 634
    .line 635
    move-object v3, v1

    .line 636
    check-cast v3, LK/k;

    .line 637
    .line 638
    iget v4, v3, LK/k;->H:I

    .line 639
    .line 640
    add-int/lit8 v4, v4, 0x3

    .line 641
    .line 642
    iput v4, v3, LK/k;->H:I

    .line 643
    .line 644
    check-cast v1, LK/k;

    .line 645
    .line 646
    iput-object v6, v1, LK/k;->I:Ljava/lang/Object;

    .line 647
    .line 648
    goto :goto_11

    .line 649
    :cond_19
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 650
    .line 651
    check-cast v1, LK/k;

    .line 652
    .line 653
    iget v1, v1, LK/k;->H:I

    .line 654
    .line 655
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bD;->i(I)Z

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    if-eqz v1, :cond_1b

    .line 660
    .line 661
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 662
    .line 663
    move-object v3, v1

    .line 664
    check-cast v3, LK/k;

    .line 665
    .line 666
    iget v5, v3, LK/k;->H:I

    .line 667
    .line 668
    add-int/lit8 v6, v5, 0x5

    .line 669
    .line 670
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 671
    .line 672
    check-cast v7, Lw5/a;

    .line 673
    .line 674
    iget v7, v7, Lw5/a;->H:I

    .line 675
    .line 676
    if-ge v6, v7, :cond_1a

    .line 677
    .line 678
    add-int/lit8 v5, v5, 0x5

    .line 679
    .line 680
    iput v5, v3, LK/k;->H:I

    .line 681
    .line 682
    goto :goto_10

    .line 683
    :cond_1a
    iput v7, v3, LK/k;->H:I

    .line 684
    .line 685
    :goto_10
    check-cast v1, LK/k;

    .line 686
    .line 687
    iput-object v4, v1, LK/k;->I:Ljava/lang/Object;

    .line 688
    .line 689
    :cond_1b
    :goto_11
    new-instance v1, LP0/j;

    .line 690
    .line 691
    const/4 v3, 0x0

    .line 692
    const/4 v4, 0x0

    .line 693
    invoke-direct {v1, v4, v3}, LP0/j;-><init>(Ljava/lang/Object;Z)V

    .line 694
    .line 695
    .line 696
    :goto_12
    iget-boolean v3, v1, LP0/j;->G:Z

    .line 697
    .line 698
    goto/16 :goto_9

    .line 699
    .line 700
    :cond_1c
    :goto_13
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 701
    .line 702
    check-cast v1, LK/k;

    .line 703
    .line 704
    iget v1, v1, LK/k;->H:I

    .line 705
    .line 706
    add-int/lit8 v5, v1, 0x7

    .line 707
    .line 708
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 709
    .line 710
    check-cast v6, Lw5/a;

    .line 711
    .line 712
    iget v6, v6, Lw5/a;->H:I

    .line 713
    .line 714
    const/4 v7, 0x4

    .line 715
    if-le v5, v6, :cond_1d

    .line 716
    .line 717
    add-int/lit8 v1, v1, 0x4

    .line 718
    .line 719
    if-gt v1, v6, :cond_25

    .line 720
    .line 721
    goto :goto_15

    .line 722
    :cond_1d
    move v5, v1

    .line 723
    :goto_14
    add-int/lit8 v6, v1, 0x3

    .line 724
    .line 725
    if-ge v5, v6, :cond_1f

    .line 726
    .line 727
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 728
    .line 729
    check-cast v6, Lw5/a;

    .line 730
    .line 731
    invoke-virtual {v6, v5}, Lw5/a;->d(I)Z

    .line 732
    .line 733
    .line 734
    move-result v6

    .line 735
    if-eqz v6, :cond_1e

    .line 736
    .line 737
    goto :goto_15

    .line 738
    :cond_1e
    add-int/lit8 v5, v5, 0x1

    .line 739
    .line 740
    goto :goto_14

    .line 741
    :cond_1f
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 742
    .line 743
    check-cast v1, Lw5/a;

    .line 744
    .line 745
    invoke-virtual {v1, v6}, Lw5/a;->d(I)Z

    .line 746
    .line 747
    .line 748
    move-result v1

    .line 749
    if-eqz v1, :cond_25

    .line 750
    .line 751
    :goto_15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 752
    .line 753
    check-cast v1, LK/k;

    .line 754
    .line 755
    iget v1, v1, LK/k;->H:I

    .line 756
    .line 757
    add-int/lit8 v5, v1, 0x7

    .line 758
    .line 759
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 760
    .line 761
    check-cast v6, Lw5/a;

    .line 762
    .line 763
    iget v6, v6, Lw5/a;->H:I

    .line 764
    .line 765
    const/16 v9, 0xa

    .line 766
    .line 767
    if-le v5, v6, :cond_21

    .line 768
    .line 769
    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/internal/ads/bD;->f(II)I

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    if-nez v1, :cond_20

    .line 774
    .line 775
    new-instance v1, LF5/k;

    .line 776
    .line 777
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 778
    .line 779
    check-cast v5, Lw5/a;

    .line 780
    .line 781
    iget v5, v5, Lw5/a;->H:I

    .line 782
    .line 783
    invoke-direct {v1, v5, v9, v9}, LF5/k;-><init>(III)V

    .line 784
    .line 785
    .line 786
    goto :goto_16

    .line 787
    :cond_20
    new-instance v5, LF5/k;

    .line 788
    .line 789
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 790
    .line 791
    check-cast v6, Lw5/a;

    .line 792
    .line 793
    iget v6, v6, Lw5/a;->H:I

    .line 794
    .line 795
    add-int/lit8 v1, v1, -0x1

    .line 796
    .line 797
    invoke-direct {v5, v6, v1, v9}, LF5/k;-><init>(III)V

    .line 798
    .line 799
    .line 800
    move-object v1, v5

    .line 801
    goto :goto_16

    .line 802
    :cond_21
    invoke-virtual {v0, v1, v14}, Lcom/google/android/gms/internal/ads/bD;->f(II)I

    .line 803
    .line 804
    .line 805
    move-result v1

    .line 806
    sub-int/2addr v1, v3

    .line 807
    div-int/lit8 v6, v1, 0xb

    .line 808
    .line 809
    rem-int/lit8 v1, v1, 0xb

    .line 810
    .line 811
    new-instance v7, LF5/k;

    .line 812
    .line 813
    invoke-direct {v7, v5, v6, v1}, LF5/k;-><init>(III)V

    .line 814
    .line 815
    .line 816
    move-object v1, v7

    .line 817
    :goto_16
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 818
    .line 819
    move-object v6, v5

    .line 820
    check-cast v6, LK/k;

    .line 821
    .line 822
    iget v7, v1, Lq0/e;->b:I

    .line 823
    .line 824
    iput v7, v6, LK/k;->H:I

    .line 825
    .line 826
    iget v6, v1, LF5/k;->d:I

    .line 827
    .line 828
    iget v1, v1, LF5/k;->c:I

    .line 829
    .line 830
    if-ne v1, v9, :cond_23

    .line 831
    .line 832
    if-ne v6, v9, :cond_22

    .line 833
    .line 834
    new-instance v1, LF5/j;

    .line 835
    .line 836
    check-cast v5, LK/k;

    .line 837
    .line 838
    iget v3, v5, LK/k;->H:I

    .line 839
    .line 840
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 841
    .line 842
    check-cast v4, Ljava/lang/StringBuilder;

    .line 843
    .line 844
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v4

    .line 848
    invoke-direct {v1, v3, v4}, LF5/j;-><init>(ILjava/lang/String;)V

    .line 849
    .line 850
    .line 851
    goto :goto_17

    .line 852
    :cond_22
    new-instance v1, LF5/j;

    .line 853
    .line 854
    check-cast v5, LK/k;

    .line 855
    .line 856
    iget v3, v5, LK/k;->H:I

    .line 857
    .line 858
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 859
    .line 860
    check-cast v4, Ljava/lang/StringBuilder;

    .line 861
    .line 862
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v4

    .line 866
    invoke-direct {v1, v3, v6, v4}, LF5/j;-><init>(IILjava/lang/String;)V

    .line 867
    .line 868
    .line 869
    :goto_17
    new-instance v3, LP0/j;

    .line 870
    .line 871
    invoke-direct {v3, v1, v8}, LP0/j;-><init>(Ljava/lang/Object;Z)V

    .line 872
    .line 873
    .line 874
    :goto_18
    move-object v1, v3

    .line 875
    const/4 v3, 0x0

    .line 876
    goto :goto_1b

    .line 877
    :cond_23
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 878
    .line 879
    check-cast v5, Ljava/lang/StringBuilder;

    .line 880
    .line 881
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    if-ne v6, v9, :cond_24

    .line 885
    .line 886
    new-instance v1, LF5/j;

    .line 887
    .line 888
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 889
    .line 890
    check-cast v3, LK/k;

    .line 891
    .line 892
    iget v3, v3, LK/k;->H:I

    .line 893
    .line 894
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 895
    .line 896
    check-cast v4, Ljava/lang/StringBuilder;

    .line 897
    .line 898
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v4

    .line 902
    invoke-direct {v1, v3, v4}, LF5/j;-><init>(ILjava/lang/String;)V

    .line 903
    .line 904
    .line 905
    new-instance v3, LP0/j;

    .line 906
    .line 907
    invoke-direct {v3, v1, v8}, LP0/j;-><init>(Ljava/lang/Object;Z)V

    .line 908
    .line 909
    .line 910
    goto :goto_18

    .line 911
    :cond_24
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 912
    .line 913
    check-cast v1, Ljava/lang/StringBuilder;

    .line 914
    .line 915
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 916
    .line 917
    .line 918
    goto/16 :goto_13

    .line 919
    .line 920
    :cond_25
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 921
    .line 922
    check-cast v1, LK/k;

    .line 923
    .line 924
    iget v1, v1, LK/k;->H:I

    .line 925
    .line 926
    add-int/lit8 v3, v1, 0x1

    .line 927
    .line 928
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 929
    .line 930
    check-cast v5, Lw5/a;

    .line 931
    .line 932
    iget v5, v5, Lw5/a;->H:I

    .line 933
    .line 934
    if-le v3, v5, :cond_26

    .line 935
    .line 936
    goto :goto_1a

    .line 937
    :cond_26
    const/4 v3, 0x0

    .line 938
    :goto_19
    if-ge v3, v7, :cond_28

    .line 939
    .line 940
    add-int v5, v3, v1

    .line 941
    .line 942
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 943
    .line 944
    check-cast v6, Lw5/a;

    .line 945
    .line 946
    iget v8, v6, Lw5/a;->H:I

    .line 947
    .line 948
    if-ge v5, v8, :cond_28

    .line 949
    .line 950
    invoke-virtual {v6, v5}, Lw5/a;->d(I)Z

    .line 951
    .line 952
    .line 953
    move-result v5

    .line 954
    if-eqz v5, :cond_27

    .line 955
    .line 956
    goto :goto_1a

    .line 957
    :cond_27
    add-int/lit8 v3, v3, 0x1

    .line 958
    .line 959
    goto :goto_19

    .line 960
    :cond_28
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 961
    .line 962
    check-cast v1, LK/k;

    .line 963
    .line 964
    iput-object v4, v1, LK/k;->I:Ljava/lang/Object;

    .line 965
    .line 966
    iget v3, v1, LK/k;->H:I

    .line 967
    .line 968
    add-int/2addr v3, v7

    .line 969
    iput v3, v1, LK/k;->H:I

    .line 970
    .line 971
    :goto_1a
    new-instance v1, LP0/j;

    .line 972
    .line 973
    const/4 v3, 0x0

    .line 974
    const/4 v4, 0x0

    .line 975
    invoke-direct {v1, v4, v3}, LP0/j;-><init>(Ljava/lang/Object;Z)V

    .line 976
    .line 977
    .line 978
    :goto_1b
    iget-boolean v4, v1, LP0/j;->G:Z

    .line 979
    .line 980
    :goto_1c
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 981
    .line 982
    check-cast v5, LK/k;

    .line 983
    .line 984
    iget v5, v5, LK/k;->H:I

    .line 985
    .line 986
    if-eq v2, v5, :cond_29

    .line 987
    .line 988
    goto :goto_1d

    .line 989
    :cond_29
    if-eqz v4, :cond_2a

    .line 990
    .line 991
    :goto_1d
    if-eqz v4, :cond_1

    .line 992
    .line 993
    :cond_2a
    iget-object v1, v1, LP0/j;->H:Ljava/lang/Object;

    .line 994
    .line 995
    check-cast v1, LF5/j;

    .line 996
    .line 997
    if-eqz v1, :cond_2b

    .line 998
    .line 999
    iget-boolean v2, v1, LF5/j;->e:Z

    .line 1000
    .line 1001
    if-eqz v2, :cond_2b

    .line 1002
    .line 1003
    new-instance v2, LF5/j;

    .line 1004
    .line 1005
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 1006
    .line 1007
    check-cast v3, Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v3

    .line 1013
    iget v1, v1, LF5/j;->d:I

    .line 1014
    .line 1015
    invoke-direct {v2, v5, v1, v3}, LF5/j;-><init>(IILjava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    return-object v2

    .line 1019
    :cond_2b
    new-instance v1, LF5/j;

    .line 1020
    .line 1021
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 1022
    .line 1023
    check-cast v2, Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v2

    .line 1029
    invoke-direct {v1, v5, v2}, LF5/j;-><init>(ILjava/lang/String;)V

    .line 1030
    .line 1031
    .line 1032
    return-object v1

    .line 1033
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    :pswitch_data_1
    .packed-switch 0xe8
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final e(LX2/a;Ljava/io/ByteArrayOutputStream;)V
    .locals 4

    .line 1
    new-instance v0, LS4/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/Map;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/Map;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, LP4/d;

    .line 14
    .line 15
    invoke-direct {v0, p2, v1, v2, v3}, LS4/f;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/Map;Ljava/util/Map;LP4/d;)V

    .line 16
    .line 17
    .line 18
    const-class p2, LX2/a;

    .line 19
    .line 20
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, LP4/d;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v1, p1, v0}, LP4/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, LP4/b;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "No encoder for "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public final f(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw5/a;

    .line 4
    .line 5
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/bD;->g(IILw5/a;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final h(I)Z
    .locals 3

    .line 1
    add-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lw5/a;

    .line 6
    .line 7
    iget v1, v1, Lw5/a;->H:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    :goto_0
    if-ge p1, v0, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lw5/a;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lw5/a;->d(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 p1, 0x1

    .line 30
    return p1
.end method

.method public final i(I)Z
    .locals 5

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lw5/a;

    .line 6
    .line 7
    iget v1, v1, Lw5/a;->H:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    const/4 v1, 0x5

    .line 15
    if-ge v0, v1, :cond_3

    .line 16
    .line 17
    add-int v1, v0, p1

    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v4, v3

    .line 22
    check-cast v4, Lw5/a;

    .line 23
    .line 24
    iget v4, v4, Lw5/a;->H:I

    .line 25
    .line 26
    if-ge v1, v4, :cond_3

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    if-ne v0, v4, :cond_1

    .line 30
    .line 31
    check-cast v3, Lw5/a;

    .line 32
    .line 33
    add-int/lit8 v1, p1, 0x2

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Lw5/a;->d(I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    return v2

    .line 42
    :cond_1
    check-cast v3, Lw5/a;

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Lw5/a;->d(I)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    return v2

    .line 51
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 p1, 0x1

    .line 55
    return p1
.end method

.method public final j(IIII)Z
    .locals 0

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    add-int/2addr p1, p3

    .line 4
    add-int/lit8 p3, p3, 0x4

    .line 5
    .line 6
    and-int/lit8 p3, p3, 0x7

    .line 7
    .line 8
    rsub-int/lit8 p3, p3, 0x4

    .line 9
    .line 10
    add-int/2addr p2, p3

    .line 11
    :cond_0
    if-gez p2, :cond_1

    .line 12
    .line 13
    add-int/2addr p2, p4

    .line 14
    add-int/lit8 p4, p4, 0x4

    .line 15
    .line 16
    and-int/lit8 p3, p4, 0x7

    .line 17
    .line 18
    rsub-int/lit8 p3, p3, 0x4

    .line 19
    .line 20
    add-int/2addr p1, p3

    .line 21
    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p3, Lw5/b;

    .line 24
    .line 25
    invoke-virtual {p3, p2, p1}, Lw5/b;->f(II)V

    .line 26
    .line 27
    .line 28
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p3, Lw5/b;

    .line 31
    .line 32
    invoke-virtual {p3, p2, p1}, Lw5/b;->b(II)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public final k(IIII)I
    .locals 5

    .line 1
    add-int/lit8 v0, p1, -0x2

    .line 2
    .line 3
    add-int/lit8 v1, p2, -0x2

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/google/android/gms/internal/ads/bD;->j(IIII)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    shl-int/lit8 v2, v2, 0x1

    .line 10
    .line 11
    add-int/lit8 v3, p2, -0x1

    .line 12
    .line 13
    invoke-virtual {p0, v0, v3, p3, p4}, Lcom/google/android/gms/internal/ads/bD;->j(IIII)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    or-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    :cond_0
    shl-int/lit8 v0, v2, 0x1

    .line 22
    .line 23
    add-int/lit8 v2, p1, -0x1

    .line 24
    .line 25
    invoke-virtual {p0, v2, v1, p3, p4}, Lcom/google/android/gms/internal/ads/bD;->j(IIII)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    or-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    invoke-virtual {p0, v2, v3, p3, p4}, Lcom/google/android/gms/internal/ads/bD;->j(IIII)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    or-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/google/android/gms/internal/ads/bD;->j(IIII)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    or-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/android/gms/internal/ads/bD;->j(IIII)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    or-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    invoke-virtual {p0, p1, v3, p3, p4}, Lcom/google/android/gms/internal/ads/bD;->j(IIII)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    or-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/bD;->j(IIII)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    or-int/lit8 v0, v0, 0x1

    .line 82
    .line 83
    :cond_6
    return v0
.end method

.method public final l(I)V
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    mul-int/lit8 p1, p1, 0x8

    .line 11
    .line 12
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p1, v1, v2

    .line 23
    .line 24
    const-string p1, "Invalid key size %d; only 128-bit and 256-bit AES keys are supported"

    .line 25
    .line 26
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 39
    .line 40
    return-void
.end method

.method public final m()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/bD;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/ads/M;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 v0, -0x1

    .line 18
    .line 19
    :goto_0
    return-wide v0

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/gms/internal/ads/qM;

    .line 23
    .line 24
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/qM;->l:J

    .line 25
    .line 26
    return-wide v0

    .line 27
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public final n(I)V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    if-gt p1, v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 17
    .line 18
    const-string v1, "Invalid tag size for AesCmacParameters: "

    .line 19
    .line 20
    invoke-static {v1, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public final declared-synchronized o(IIJJ)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lc4/l0;

    .line 7
    .line 8
    iget-object v0, v0, Lc4/l0;->T:LP3/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    const-wide/16 v6, -0x1

    .line 26
    .line 27
    cmp-long v8, v4, v6

    .line 28
    .line 29
    if-nez v8, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    sub-long v4, v2, v4

    .line 37
    .line 38
    const-wide/32 v6, 0x1b7740

    .line 39
    .line 40
    .line 41
    cmp-long v0, v4, v6

    .line 42
    .line 43
    if-gtz v0, :cond_1

    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lcom/google/android/gms/common/internal/u;

    .line 50
    .line 51
    new-instance v4, Lcom/google/android/gms/common/internal/t;

    .line 52
    .line 53
    const/4 v5, 0x1

    .line 54
    new-array v5, v5, [Lcom/google/android/gms/common/internal/q;

    .line 55
    .line 56
    new-instance v18, Lcom/google/android/gms/common/internal/q;

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v14, 0x0

    .line 60
    const/4 v15, 0x0

    .line 61
    const/16 v16, 0x0

    .line 62
    .line 63
    const v7, 0x8dcd

    .line 64
    .line 65
    .line 66
    move-object/from16 v6, v18

    .line 67
    .line 68
    move/from16 v8, p1

    .line 69
    .line 70
    move-wide/from16 v10, p3

    .line 71
    .line 72
    move-wide/from16 v12, p5

    .line 73
    .line 74
    move/from16 v17, p2

    .line 75
    .line 76
    invoke-direct/range {v6 .. v17}, Lcom/google/android/gms/common/internal/q;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    aput-object v18, v5, v6

    .line 81
    .line 82
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-direct {v4, v6, v5}, Lcom/google/android/gms/common/internal/t;-><init>(ILjava/util/List;)V

    .line 87
    .line 88
    .line 89
    check-cast v0, LN3/b;

    .line 90
    .line 91
    invoke-virtual {v0, v4}, LN3/b;->c(Lcom/google/android/gms/common/internal/t;)Lg4/h;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v4, Lf6/c;

    .line 96
    .line 97
    const/4 v5, 0x7

    .line 98
    invoke-direct {v4, v1, v5, v2, v3}, Lf6/c;-><init>(Ljava/lang/Object;IJ)V

    .line 99
    .line 100
    .line 101
    check-cast v0, Lg4/r;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    sget-object v2, Lg4/j;->a:Lg4/q;

    .line 107
    .line 108
    invoke-virtual {v0, v2, v4}, Lg4/r;->b(Ljava/util/concurrent/Executor;Lg4/e;)Lg4/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    monitor-exit p0

    .line 112
    return-void

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    monitor-exit p0

    .line 115
    throw v0
.end method

.method public final onComplete(Lg4/h;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LX3/d;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lg4/i;

    .line 12
    .line 13
    invoke-virtual {p1}, Lg4/h;->h()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lg4/h;->f()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lg4/i;->d(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    move-object v2, p1

    .line 28
    check-cast v2, Lg4/r;

    .line 29
    .line 30
    iget-boolean v2, v2, Lg4/r;->d:Z

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lg4/k;

    .line 37
    .line 38
    iget v0, p1, Lg4/k;->G:I

    .line 39
    .line 40
    iget-object p1, p1, Lg4/k;->H:Ljava/lang/Object;

    .line 41
    .line 42
    packed-switch v0, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    check-cast p1, Lg4/r;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Lg4/r;->m(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_0
    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Lg4/h;->e()Ljava/lang/Exception;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lg4/i;->c(Ljava/lang/Exception;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final p()Lcom/google/android/gms/internal/ads/cD;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/fD;

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/google/android/gms/internal/ads/Xu;

    .line 10
    .line 11
    if-eqz v1, :cond_8

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Xu;->e()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v2, v0, Lcom/google/android/gms/internal/ads/fD;->a:I

    .line 18
    .line 19
    if-ne v2, v1, :cond_7

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fD;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Ljava/lang/Integer;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 35
    .line 36
    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcom/google/android/gms/internal/ads/fD;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fD;->a()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Ljava/lang/Integer;

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 60
    .line 61
    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lcom/google/android/gms/internal/ads/fD;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/fD;->b:Lcom/google/android/gms/internal/ads/eD;

    .line 72
    .line 73
    sget-object v1, Lcom/google/android/gms/internal/ads/eD;->d:Lcom/google/android/gms/internal/ads/eD;

    .line 74
    .line 75
    if-ne v0, v1, :cond_4

    .line 76
    .line 77
    sget-object v0, Lcom/google/android/gms/internal/ads/tE;->a:Lcom/google/android/gms/internal/ads/NG;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/ads/eD;->c:Lcom/google/android/gms/internal/ads/eD;

    .line 81
    .line 82
    if-ne v0, v1, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tE;->a(I)Lcom/google/android/gms/internal/ads/NG;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/ads/eD;->b:Lcom/google/android/gms/internal/ads/eD;

    .line 98
    .line 99
    if-ne v0, v1, :cond_6

    .line 100
    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tE;->b(I)Lcom/google/android/gms/internal/ads/NG;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/cD;

    .line 114
    .line 115
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v2, Lcom/google/android/gms/internal/ads/fD;

    .line 118
    .line 119
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v3, Lcom/google/android/gms/internal/ads/Xu;

    .line 122
    .line 123
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v4, Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/cD;-><init>(Lcom/google/android/gms/internal/ads/fD;Lcom/google/android/gms/internal/ads/Xu;Lcom/google/android/gms/internal/ads/NG;Ljava/lang/Integer;)V

    .line 128
    .line 129
    .line 130
    return-object v1

    .line 131
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v1, Lcom/google/android/gms/internal/ads/fD;

    .line 136
    .line 137
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/fD;->b:Lcom/google/android/gms/internal/ads/eD;

    .line 138
    .line 139
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string v2, "Unknown AesGcmParameters.Variant: "

    .line 144
    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 154
    .line 155
    const-string v1, "Key size mismatch"

    .line 156
    .line 157
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 162
    .line 163
    const-string v1, "Cannot build without parameters and/or key material"

    .line 164
    .line 165
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0
.end method

.method public final q()Lcom/google/android/gms/internal/ads/gD;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/jD;

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/google/android/gms/internal/ads/Xu;

    .line 10
    .line 11
    if-eqz v1, :cond_8

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Xu;->e()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v2, v0, Lcom/google/android/gms/internal/ads/jD;->a:I

    .line 18
    .line 19
    if-ne v2, v1, :cond_7

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jD;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Ljava/lang/Integer;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 35
    .line 36
    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcom/google/android/gms/internal/ads/jD;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jD;->a()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Ljava/lang/Integer;

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 60
    .line 61
    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lcom/google/android/gms/internal/ads/jD;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/jD;->b:Lcom/google/android/gms/internal/ads/iD;

    .line 72
    .line 73
    sget-object v1, Lcom/google/android/gms/internal/ads/iD;->d:Lcom/google/android/gms/internal/ads/iD;

    .line 74
    .line 75
    if-ne v0, v1, :cond_4

    .line 76
    .line 77
    sget-object v0, Lcom/google/android/gms/internal/ads/tE;->a:Lcom/google/android/gms/internal/ads/NG;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/ads/iD;->c:Lcom/google/android/gms/internal/ads/iD;

    .line 81
    .line 82
    if-ne v0, v1, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tE;->a(I)Lcom/google/android/gms/internal/ads/NG;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/ads/iD;->b:Lcom/google/android/gms/internal/ads/iD;

    .line 98
    .line 99
    if-ne v0, v1, :cond_6

    .line 100
    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tE;->b(I)Lcom/google/android/gms/internal/ads/NG;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/gD;

    .line 114
    .line 115
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v2, Lcom/google/android/gms/internal/ads/jD;

    .line 118
    .line 119
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v3, Lcom/google/android/gms/internal/ads/Xu;

    .line 122
    .line 123
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v4, Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/gD;-><init>(Lcom/google/android/gms/internal/ads/jD;Lcom/google/android/gms/internal/ads/Xu;Lcom/google/android/gms/internal/ads/NG;Ljava/lang/Integer;)V

    .line 128
    .line 129
    .line 130
    return-object v1

    .line 131
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v1, Lcom/google/android/gms/internal/ads/jD;

    .line 136
    .line 137
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/jD;->b:Lcom/google/android/gms/internal/ads/iD;

    .line 138
    .line 139
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string v2, "Unknown AesGcmSivParameters.Variant: "

    .line 144
    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 154
    .line 155
    const-string v1, "Key size mismatch"

    .line 156
    .line 157
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 162
    .line 163
    const-string v1, "Cannot build without parameters and/or key material"

    .line 164
    .line 165
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0
.end method

.method public final r()Lcom/google/android/gms/internal/ads/OE;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/RE;

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/google/android/gms/internal/ads/Xu;

    .line 10
    .line 11
    if-eqz v1, :cond_9

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Xu;->e()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v2, v0, Lcom/google/android/gms/internal/ads/RE;->a:I

    .line 18
    .line 19
    if-ne v2, v1, :cond_8

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/RE;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Ljava/lang/Integer;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 35
    .line 36
    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcom/google/android/gms/internal/ads/RE;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/RE;->a()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Ljava/lang/Integer;

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 60
    .line 61
    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lcom/google/android/gms/internal/ads/RE;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RE;->c:Lcom/google/android/gms/internal/ads/QE;

    .line 72
    .line 73
    sget-object v1, Lcom/google/android/gms/internal/ads/QE;->e:Lcom/google/android/gms/internal/ads/QE;

    .line 74
    .line 75
    if-ne v0, v1, :cond_4

    .line 76
    .line 77
    sget-object v0, Lcom/google/android/gms/internal/ads/tE;->a:Lcom/google/android/gms/internal/ads/NG;

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/ads/QE;->d:Lcom/google/android/gms/internal/ads/QE;

    .line 81
    .line 82
    if-eq v0, v1, :cond_7

    .line 83
    .line 84
    sget-object v1, Lcom/google/android/gms/internal/ads/QE;->c:Lcom/google/android/gms/internal/ads/QE;

    .line 85
    .line 86
    if-ne v0, v1, :cond_5

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/ads/QE;->b:Lcom/google/android/gms/internal/ads/QE;

    .line 90
    .line 91
    if-ne v0, v1, :cond_6

    .line 92
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tE;->b(I)Lcom/google/android/gms/internal/ads/NG;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    goto :goto_3

    .line 106
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v1, Lcom/google/android/gms/internal/ads/RE;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/RE;->c:Lcom/google/android/gms/internal/ads/QE;

    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const-string v2, "Unknown AesCmacParametersParameters.Variant: "

    .line 119
    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v0, Ljava/lang/Integer;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tE;->a(I)Lcom/google/android/gms/internal/ads/NG;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    :goto_3
    new-instance v1, Lcom/google/android/gms/internal/ads/OE;

    .line 141
    .line 142
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v2, Lcom/google/android/gms/internal/ads/RE;

    .line 145
    .line 146
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v3, Lcom/google/android/gms/internal/ads/Xu;

    .line 149
    .line 150
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v4, Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/OE;-><init>(Lcom/google/android/gms/internal/ads/RE;Lcom/google/android/gms/internal/ads/Xu;Lcom/google/android/gms/internal/ads/NG;Ljava/lang/Integer;)V

    .line 155
    .line 156
    .line 157
    return-object v1

    .line 158
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 159
    .line 160
    const-string v1, "Key size mismatch"

    .line 161
    .line 162
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v0

    .line 166
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 167
    .line 168
    const-string v1, "Cannot build without parameters and/or key material"

    .line 169
    .line 170
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v0
.end method

.method public final s()Lcom/google/android/gms/internal/ads/RE;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Integer;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lcom/google/android/gms/internal/ads/QE;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Lcom/google/android/gms/internal/ads/RE;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Lcom/google/android/gms/internal/ads/QE;

    .line 36
    .line 37
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/RE;-><init>(IILcom/google/android/gms/internal/ads/QE;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 42
    .line 43
    const-string v1, "variant not set"

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 50
    .line 51
    const-string v1, "tag size not set"

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 58
    .line 59
    const-string v1, "key size not set"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0
.end method

.method public final t()Lcom/google/android/gms/internal/ads/WE;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/aF;

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/google/android/gms/internal/ads/Xu;

    .line 10
    .line 11
    if-eqz v1, :cond_9

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Xu;->e()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v2, v0, Lcom/google/android/gms/internal/ads/aF;->a:I

    .line 18
    .line 19
    if-ne v2, v1, :cond_8

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aF;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Ljava/lang/Integer;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 35
    .line 36
    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcom/google/android/gms/internal/ads/aF;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aF;->a()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Ljava/lang/Integer;

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 60
    .line 61
    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lcom/google/android/gms/internal/ads/aF;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aF;->c:Lcom/google/android/gms/internal/ads/ZE;

    .line 72
    .line 73
    sget-object v1, Lcom/google/android/gms/internal/ads/ZE;->e:Lcom/google/android/gms/internal/ads/ZE;

    .line 74
    .line 75
    if-ne v0, v1, :cond_4

    .line 76
    .line 77
    sget-object v0, Lcom/google/android/gms/internal/ads/tE;->a:Lcom/google/android/gms/internal/ads/NG;

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/ads/ZE;->d:Lcom/google/android/gms/internal/ads/ZE;

    .line 81
    .line 82
    if-eq v0, v1, :cond_7

    .line 83
    .line 84
    sget-object v1, Lcom/google/android/gms/internal/ads/ZE;->c:Lcom/google/android/gms/internal/ads/ZE;

    .line 85
    .line 86
    if-ne v0, v1, :cond_5

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/ads/ZE;->b:Lcom/google/android/gms/internal/ads/ZE;

    .line 90
    .line 91
    if-ne v0, v1, :cond_6

    .line 92
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tE;->b(I)Lcom/google/android/gms/internal/ads/NG;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    goto :goto_3

    .line 106
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v1, Lcom/google/android/gms/internal/ads/aF;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/aF;->c:Lcom/google/android/gms/internal/ads/ZE;

    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const-string v2, "Unknown HmacParameters.Variant: "

    .line 119
    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v0, Ljava/lang/Integer;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tE;->a(I)Lcom/google/android/gms/internal/ads/NG;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    :goto_3
    new-instance v1, Lcom/google/android/gms/internal/ads/WE;

    .line 141
    .line 142
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v2, Lcom/google/android/gms/internal/ads/aF;

    .line 145
    .line 146
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v3, Lcom/google/android/gms/internal/ads/Xu;

    .line 149
    .line 150
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v4, Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/WE;-><init>(Lcom/google/android/gms/internal/ads/aF;Lcom/google/android/gms/internal/ads/Xu;Lcom/google/android/gms/internal/ads/NG;Ljava/lang/Integer;)V

    .line 155
    .line 156
    .line 157
    return-object v1

    .line 158
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 159
    .line 160
    const-string v1, "Key size mismatch"

    .line 161
    .line 162
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v0

    .line 166
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 167
    .line 168
    const-string v1, "Cannot build without parameters and/or key material"

    .line 169
    .line 170
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v0
.end method

.method public final u(Lcom/google/android/gms/internal/ads/kC;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/gms/internal/ads/N;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/F;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p4

    .line 6
    move-wide v4, p6

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/F;-><init>(Lcom/google/android/gms/internal/ads/kC;JJ)V

    .line 8
    .line 9
    .line 10
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/L;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lcom/google/android/gms/internal/ads/O;

    .line 22
    .line 23
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/O;->a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/L;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    array-length p2, p1

    .line 28
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/uA;->r(I)Lcom/google/android/gms/internal/ads/rA;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    const/4 p6, 0x1

    .line 33
    const/4 p7, 0x0

    .line 34
    if-ne p2, p6, :cond_1

    .line 35
    .line 36
    aget-object p1, p1, p7

    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 39
    .line 40
    goto :goto_7

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    if-ge v0, p2, :cond_9

    .line 43
    .line 44
    aget-object v1, p1, v0

    .line 45
    .line 46
    :try_start_0
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/ads/L;->d(Lcom/google/android/gms/internal/ads/M;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    iput p7, v6, Lcom/google/android/gms/internal/ads/F;->f:I

    .line 55
    .line 56
    goto :goto_6

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_2

    .line 59
    :catch_0
    nop

    .line 60
    goto :goto_4

    .line 61
    :cond_2
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/L;->zzd()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/oA;->d(Ljava/lang/Iterable;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, Lcom/google/android/gms/internal/ads/L;

    .line 71
    .line 72
    if-nez v1, :cond_3

    .line 73
    .line 74
    iget-wide v1, v6, Lcom/google/android/gms/internal/ads/F;->d:J

    .line 75
    .line 76
    cmp-long v3, v1, p4

    .line 77
    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    :cond_3
    const/4 v1, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    const/4 v1, 0x0

    .line 83
    :goto_1
    invoke-static {v1}, Lo3/r;->M(Z)V

    .line 84
    .line 85
    .line 86
    iput p7, v6, Lcom/google/android/gms/internal/ads/F;->f:I

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p2, Lcom/google/android/gms/internal/ads/L;

    .line 92
    .line 93
    if-nez p2, :cond_6

    .line 94
    .line 95
    iget-wide p2, v6, Lcom/google/android/gms/internal/ads/F;->d:J

    .line 96
    .line 97
    cmp-long p8, p2, p4

    .line 98
    .line 99
    if-nez p8, :cond_5

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    const/4 p6, 0x0

    .line 103
    :cond_6
    :goto_3
    invoke-static {p6}, Lo3/r;->M(Z)V

    .line 104
    .line 105
    .line 106
    iput p7, v6, Lcom/google/android/gms/internal/ads/F;->f:I

    .line 107
    .line 108
    throw p1

    .line 109
    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v1, Lcom/google/android/gms/internal/ads/L;

    .line 112
    .line 113
    if-nez v1, :cond_7

    .line 114
    .line 115
    iget-wide v1, v6, Lcom/google/android/gms/internal/ads/F;->d:J

    .line 116
    .line 117
    cmp-long v3, v1, p4

    .line 118
    .line 119
    if-nez v3, :cond_8

    .line 120
    .line 121
    :cond_7
    const/4 v1, 0x1

    .line 122
    goto :goto_1

    .line 123
    :cond_8
    const/4 v1, 0x0

    .line 124
    goto :goto_1

    .line 125
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_9
    :goto_6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p2, Lcom/google/android/gms/internal/ads/L;

    .line 131
    .line 132
    if-eqz p2, :cond_a

    .line 133
    .line 134
    :goto_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p1, Lcom/google/android/gms/internal/ads/L;

    .line 137
    .line 138
    invoke-interface {p1, p8}, Lcom/google/android/gms/internal/ads/L;->f(Lcom/google/android/gms/internal/ads/N;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_a
    new-instance p2, Lcom/google/android/gms/internal/ads/w0;

    .line 143
    .line 144
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uA;->u([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-instance p4, Lcom/google/android/gms/internal/ads/u1;

    .line 149
    .line 150
    const/16 p5, 0x17

    .line 151
    .line 152
    invoke-direct {p4, p5}, Lcom/google/android/gms/internal/ads/u1;-><init>(I)V

    .line 153
    .line 154
    .line 155
    invoke-static {p1, p4}, Lcom/google/android/gms/internal/ads/Cw;->F0(Ljava/util/List;Lcom/google/android/gms/internal/ads/u1;)Ljava/util/AbstractList;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    new-instance p4, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string p5, ", "

    .line 169
    .line 170
    invoke-static {p4, p1, p5}, La7/b;->t(Ljava/lang/StringBuilder;Ljava/util/Iterator;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    const-string p4, "None of the available extractors ("

    .line 178
    .line 179
    const-string p5, ") could read the stream."

    .line 180
    .line 181
    invoke-static {p4, p1, p5}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/rA;->h()Lcom/google/android/gms/internal/ads/PA;

    .line 186
    .line 187
    .line 188
    move-result-object p3

    .line 189
    const/4 p4, 0x0

    .line 190
    invoke-direct {p2, p1, p4, p7, p6}, Lcom/google/android/gms/internal/ads/Ka;-><init>(Ljava/lang/String;Ljava/lang/RuntimeException;ZI)V

    .line 191
    .line 192
    .line 193
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/uA;->t(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/uA;

    .line 194
    .line 195
    .line 196
    throw p2
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

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
    check-cast v0, LZ3/i;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, LZ3/X;

    .line 14
    .line 15
    check-cast v1, LZ3/h0;

    .line 16
    .line 17
    invoke-virtual {v1}, LZ3/h0;->a()LZ3/g0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, LZ3/X;

    .line 24
    .line 25
    invoke-interface {v2}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, LZ3/p;

    .line 30
    .line 31
    new-instance v2, LZ3/b0;

    .line 32
    .line 33
    invoke-direct {v2, v0, v1}, LZ3/b0;-><init>(LZ3/i;LZ3/g0;)V

    .line 34
    .line 35
    .line 36
    return-object v2
.end method
