.class public final LE0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/w;
.implements LO0/V;
.implements LP0/l;


# static fields
.field public static final g0:Ljava/util/regex/Pattern;

.field public static final h0:Ljava/util/regex/Pattern;


# instance fields
.field public final G:I

.field public final H:LE0/a;

.field public final I:Ls0/O;

.field public final J:LG0/r;

.field public final K:LU4/b;

.field public final L:Lm2/i;

.field public final M:J

.field public final N:LS0/n;

.field public final O:LS0/d;

.field public final P:LO0/Z;

.field public final Q:[LE0/c;

.field public final R:LU4/b;

.field public final S:LE0/t;

.field public final T:Ljava/util/IdentityHashMap;

.field public final U:LO0/D;

.field public final V:LG0/o;

.field public final W:LC0/I;

.field public X:LO0/v;

.field public Y:[LP0/m;

.field public Z:[LE0/q;

.field public a0:LO0/j;

.field public b0:LF0/c;

.field public c0:I

.field public d0:Ljava/util/List;

.field public e0:Z

.field public f0:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "CC([1-4])=(.+)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LE0/d;->g0:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "([1-4])=lang:(\\w+)(,.+)?"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, LE0/d;->h0:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(ILF0/c;Lm2/i;ILE0/a;Ls0/O;LG0/r;LG0/o;LU4/b;LO0/D;JLS0/n;LS0/d;LU4/b;LE0/f;LC0/I;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p14

    const/4 v6, 0x0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v7, p1

    .line 3
    iput v7, v0, LE0/d;->G:I

    .line 4
    iput-object v1, v0, LE0/d;->b0:LF0/c;

    move-object/from16 v7, p3

    .line 5
    iput-object v7, v0, LE0/d;->L:Lm2/i;

    .line 6
    iput v2, v0, LE0/d;->c0:I

    .line 7
    iput-object v3, v0, LE0/d;->H:LE0/a;

    move-object/from16 v7, p6

    .line 8
    iput-object v7, v0, LE0/d;->I:Ls0/O;

    .line 9
    iput-object v4, v0, LE0/d;->J:LG0/r;

    move-object/from16 v7, p8

    .line 10
    iput-object v7, v0, LE0/d;->V:LG0/o;

    move-object/from16 v7, p9

    .line 11
    iput-object v7, v0, LE0/d;->K:LU4/b;

    move-object/from16 v7, p10

    .line 12
    iput-object v7, v0, LE0/d;->U:LO0/D;

    move-wide/from16 v7, p11

    .line 13
    iput-wide v7, v0, LE0/d;->M:J

    move-object/from16 v7, p13

    .line 14
    iput-object v7, v0, LE0/d;->N:LS0/n;

    .line 15
    iput-object v5, v0, LE0/d;->O:LS0/d;

    move-object/from16 v7, p15

    .line 16
    iput-object v7, v0, LE0/d;->R:LU4/b;

    move-object/from16 v8, p17

    .line 17
    iput-object v8, v0, LE0/d;->W:LC0/I;

    const/4 v8, 0x1

    .line 18
    iput-boolean v8, v0, LE0/d;->e0:Z

    .line 19
    new-instance v9, LE0/t;

    move-object/from16 v10, p16

    invoke-direct {v9, v1, v10, v5}, LE0/t;-><init>(LF0/c;LE0/f;LS0/d;)V

    iput-object v9, v0, LE0/d;->S:LE0/t;

    .line 20
    new-array v5, v6, [LP0/m;

    .line 21
    iput-object v5, v0, LE0/d;->Y:[LP0/m;

    .line 22
    new-array v5, v6, [LE0/q;

    iput-object v5, v0, LE0/d;->Z:[LE0/q;

    .line 23
    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v5, v0, LE0/d;->T:Ljava/util/IdentityHashMap;

    .line 24
    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance v5, LO0/j;

    sget-object v7, Lz4/H;->H:Lz4/F;

    .line 26
    sget-object v7, Lz4/d0;->K:Lz4/d0;

    .line 27
    invoke-direct {v5, v7, v7}, LO0/j;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 28
    iput-object v5, v0, LE0/d;->a0:LO0/j;

    .line 29
    invoke-virtual {v1, v2}, LF0/c;->b(I)LF0/h;

    move-result-object v1

    .line 30
    iget-object v2, v1, LF0/h;->d:Ljava/util/List;

    iput-object v2, v0, LE0/d;->d0:Ljava/util/List;

    .line 31
    iget-object v1, v1, LF0/h;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 32
    new-instance v7, Ljava/util/HashMap;

    invoke-static {v5}, Ld2/v;->e(I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 33
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10, v5}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v5, :cond_0

    .line 35
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LF0/a;

    iget-wide v12, v12, LF0/a;->a:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/2addr v11, v8

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_1
    const/4 v12, -0x1

    if-ge v11, v5, :cond_6

    .line 40
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LF0/a;

    .line 41
    iget-object v14, v13, LF0/a;->e:Ljava/util/List;

    .line 42
    const-string v15, "http://dashif.org/guidelines/trickmode"

    invoke-static {v15, v14}, LE0/d;->c(Ljava/lang/String;Ljava/util/List;)LF0/f;

    move-result-object v14

    .line 43
    iget-object v6, v13, LF0/a;->f:Ljava/util/List;

    if-nez v14, :cond_1

    .line 44
    invoke-static {v15, v6}, LE0/d;->c(Ljava/lang/String;Ljava/util/List;)LF0/f;

    move-result-object v14

    :cond_1
    if-eqz v14, :cond_2

    .line 45
    iget-object v14, v14, LF0/f;->b:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 46
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_2

    .line 47
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LF0/a;

    invoke-static {v13, v15}, LE0/d;->b(LF0/a;LF0/a;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 48
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_2

    :cond_2
    move v14, v11

    :goto_2
    if-ne v14, v11, :cond_4

    .line 49
    const-string v15, "urn:mpeg:dash:adaptation-set-switching:2016"

    invoke-static {v15, v6}, LE0/d;->c(Ljava/lang/String;Ljava/util/List;)LF0/f;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 50
    sget-object v15, Lp0/M;->a:Ljava/lang/String;

    .line 51
    iget-object v6, v6, LF0/f;->b:Ljava/lang/String;

    const-string v15, ","

    invoke-virtual {v6, v15, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 52
    array-length v12, v6

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v12, :cond_4

    aget-object v16, v6, v15

    .line 53
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    move/from16 p2, v5

    if-eqz v8, :cond_3

    .line 54
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LF0/a;

    .line 55
    invoke-static {v13, v5}, LE0/d;->b(LF0/a;LF0/a;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 56
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v14, v5

    :cond_3
    const/4 v5, 0x1

    add-int/2addr v15, v5

    move/from16 v5, p2

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    move/from16 p2, v5

    if-eq v14, v11, :cond_5

    .line 57
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 58
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 59
    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-virtual {v10, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    const/4 v5, 0x1

    add-int/2addr v11, v5

    move/from16 v5, p2

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x1

    .line 62
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [[I

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_7

    .line 63
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-static {v10}, Ly4/k;->g0(Ljava/util/Collection;)[I

    move-result-object v10

    aput-object v10, v7, v8

    .line 64
    invoke-static {v10}, Ljava/util/Arrays;->sort([I)V

    add-int/2addr v8, v5

    goto :goto_4

    .line 65
    :cond_7
    new-array v5, v6, [Z

    .line 66
    new-array v8, v6, [[Lm0/t;

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_5
    if-ge v9, v6, :cond_10

    .line 67
    aget-object v11, v7, v9

    .line 68
    array-length v13, v11

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v13, :cond_a

    aget v15, v11, v14

    .line 69
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LF0/a;

    iget-object v15, v15, LF0/a;->c:Ljava/util/List;

    move-object/from16 p3, v11

    const/4 v12, 0x0

    .line 70
    :goto_7
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    if-ge v12, v11, :cond_9

    .line 71
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LF0/m;

    .line 72
    iget-object v11, v11, LF0/m;->d:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x1

    .line 73
    aput-boolean v11, v5, v9

    add-int/2addr v10, v11

    goto :goto_8

    :cond_8
    const/4 v11, 0x1

    add-int/2addr v12, v11

    goto :goto_7

    :cond_9
    const/4 v11, 0x1

    add-int/2addr v14, v11

    move-object/from16 v11, p3

    const/4 v12, -0x1

    goto :goto_6

    .line 74
    :cond_a
    :goto_8
    aget-object v11, v7, v9

    .line 75
    array-length v12, v11

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v12, :cond_e

    aget v14, v11, v13

    .line 76
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LF0/a;

    .line 77
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LF0/a;

    iget-object v14, v14, LF0/a;->d:Ljava/util/List;

    move-object/from16 p3, v11

    move/from16 v16, v12

    const/4 v11, 0x0

    .line 78
    :goto_a
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_d

    .line 79
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LF0/f;

    move-object/from16 v17, v14

    .line 80
    iget-object v14, v12, LF0/f;->a:Ljava/lang/String;

    const-string v0, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 81
    new-instance v0, Lm0/s;

    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 82
    const-string v11, "application/cea-608"

    invoke-static {v11}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lm0/s;->n:Ljava/lang/String;

    .line 83
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, v15, LF0/a;->a:J

    const-string v15, ":cea608"

    .line 84
    invoke-static {v11, v13, v14, v15}, La/r;->i(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 85
    iput-object v11, v0, Lm0/s;->a:Ljava/lang/String;

    .line 86
    new-instance v11, Lm0/t;

    invoke-direct {v11, v0}, Lm0/t;-><init>(Lm0/s;)V

    .line 87
    sget-object v0, LE0/d;->g0:Ljava/util/regex/Pattern;

    invoke-static {v12, v0, v11}, LE0/d;->j(LF0/f;Ljava/util/regex/Pattern;Lm0/t;)[Lm0/t;

    move-result-object v0

    :goto_b
    move-object v12, v0

    const/4 v0, 0x1

    goto :goto_c

    .line 88
    :cond_b
    const-string v0, "urn:scte:dash:cc:cea-708:2015"

    iget-object v14, v12, LF0/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 89
    new-instance v0, Lm0/s;

    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 90
    const-string v11, "application/cea-708"

    invoke-static {v11}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lm0/s;->n:Ljava/lang/String;

    .line 91
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, v15, LF0/a;->a:J

    const-string v15, ":cea708"

    .line 92
    invoke-static {v11, v13, v14, v15}, La/r;->i(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 93
    iput-object v11, v0, Lm0/s;->a:Ljava/lang/String;

    .line 94
    new-instance v11, Lm0/t;

    invoke-direct {v11, v0}, Lm0/t;-><init>(Lm0/s;)V

    .line 95
    sget-object v0, LE0/d;->h0:Ljava/util/regex/Pattern;

    invoke-static {v12, v0, v11}, LE0/d;->j(LF0/f;Ljava/util/regex/Pattern;Lm0/t;)[Lm0/t;

    move-result-object v0

    goto :goto_b

    :cond_c
    const/4 v0, 0x1

    add-int/2addr v11, v0

    move-object/from16 v0, p0

    move-object/from16 v14, v17

    goto :goto_a

    :cond_d
    const/4 v0, 0x1

    add-int/2addr v13, v0

    move-object/from16 v0, p0

    move-object/from16 v11, p3

    move/from16 v12, v16

    goto/16 :goto_9

    :cond_e
    const/4 v0, 0x1

    const/4 v11, 0x0

    .line 96
    new-array v12, v11, [Lm0/t;

    .line 97
    :goto_c
    aput-object v12, v8, v9

    .line 98
    array-length v11, v12

    if-eqz v11, :cond_f

    add-int/2addr v10, v0

    :cond_f
    add-int/2addr v9, v0

    const/4 v12, -0x1

    move-object/from16 v0, p0

    goto/16 :goto_5

    :cond_10
    add-int/2addr v10, v6

    .line 99
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v10

    .line 100
    new-array v9, v0, [Lm0/g0;

    .line 101
    new-array v0, v0, [LE0/c;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 102
    :goto_d
    const-string v12, "application/x-emsg"

    if-ge v11, v6, :cond_18

    .line 103
    aget-object v13, v7, v11

    .line 104
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 105
    array-length v15, v13

    move/from16 p3, v6

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v15, :cond_11

    move-object/from16 v16, v7

    aget v7, v13, v6

    .line 106
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LF0/a;

    iget-object v7, v7, LF0/a;->c:Ljava/util/List;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v7, 0x1

    add-int/2addr v6, v7

    move-object/from16 v7, v16

    goto :goto_e

    :cond_11
    move-object/from16 v16, v7

    .line 107
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [Lm0/t;

    const/4 v15, 0x0

    :goto_f
    if-ge v15, v6, :cond_12

    .line 108
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 p4, v6

    move-object/from16 v6, v17

    check-cast v6, LF0/m;

    iget-object v6, v6, LF0/m;->a:Lm0/t;

    move-object/from16 p6, v14

    .line 109
    invoke-virtual {v6}, Lm0/t;->a()Lm0/s;

    move-result-object v14

    .line 110
    invoke-interface {v4, v6}, LG0/r;->m(Lm0/t;)I

    move-result v6

    .line 111
    iput v6, v14, Lm0/s;->O:I

    .line 112
    new-instance v6, Lm0/t;

    invoke-direct {v6, v14}, Lm0/t;-><init>(Lm0/s;)V

    .line 113
    aput-object v6, v7, v15

    const/4 v6, 0x1

    add-int/2addr v15, v6

    move/from16 v6, p4

    move-object/from16 v14, p6

    goto :goto_f

    :cond_12
    const/4 v6, 0x0

    .line 114
    aget v14, v13, v6

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LF0/a;

    .line 115
    iget-wide v14, v6, LF0/a;->a:J

    const-wide/16 v17, -0x1

    cmp-long v19, v14, v17

    if-eqz v19, :cond_13

    .line 116
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    :goto_10
    const/4 v15, 0x1

    goto :goto_11

    .line 117
    :cond_13
    const-string v14, "unset:"

    .line 118
    invoke-static {v14, v11}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_10

    :goto_11
    add-int/lit8 v17, v10, 0x1

    .line 119
    aget-boolean v18, v5, v11

    if-eqz v18, :cond_14

    add-int/lit8 v18, v10, 0x2

    move/from16 p4, v17

    move/from16 v17, v18

    goto :goto_12

    :cond_14
    const/16 p4, -0x1

    .line 120
    :goto_12
    aget-object v15, v8, v11

    array-length v15, v15

    if-eqz v15, :cond_15

    const/4 v15, 0x1

    add-int/lit8 v18, v17, 0x1

    move/from16 v15, v17

    move/from16 v17, v18

    goto :goto_13

    :cond_15
    const/4 v15, -0x1

    .line 121
    :goto_13
    invoke-static {v3, v7}, LE0/d;->f(LE0/a;[Lm0/t;)V

    move-object/from16 v18, v1

    .line 122
    new-instance v1, Lm0/g0;

    invoke-direct {v1, v14, v7}, Lm0/g0;-><init>(Ljava/lang/String;[Lm0/t;)V

    aput-object v1, v9, v10

    .line 123
    new-instance v1, LE0/c;

    .line 124
    sget-object v7, Lz4/H;->H:Lz4/F;

    .line 125
    sget-object v7, Lz4/d0;->K:Lz4/d0;

    const/16 v19, 0x0

    const/16 v20, -0x1

    .line 126
    iget v6, v6, LF0/a;->b:I

    move-object/from16 p8, v1

    move/from16 p9, v6

    move/from16 p10, v19

    move-object/from16 p11, v13

    move/from16 p12, v10

    move/from16 p13, p4

    move/from16 p14, v15

    move/from16 p15, v20

    move-object/from16 p16, v7

    invoke-direct/range {p8 .. p16}, LE0/c;-><init>(II[IIIIILz4/d0;)V

    .line 127
    aput-object v1, v0, v10

    move/from16 v6, p4

    const/4 v1, -0x1

    if-eq v6, v1, :cond_16

    .line 128
    const-string v1, ":emsg"

    .line 129
    invoke-static {v14, v1}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    new-instance v4, Lm0/s;

    invoke-direct {v4}, Lm0/s;-><init>()V

    .line 131
    iput-object v1, v4, Lm0/s;->a:Ljava/lang/String;

    .line 132
    invoke-static {v12}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lm0/s;->n:Ljava/lang/String;

    .line 133
    new-instance v12, Lm0/t;

    invoke-direct {v12, v4}, Lm0/t;-><init>(Lm0/s;)V

    .line 134
    new-instance v4, Lm0/g0;

    move-object/from16 v20, v2

    move-object/from16 v19, v5

    const/4 v5, 0x1

    new-array v2, v5, [Lm0/t;

    const/4 v5, 0x0

    aput-object v12, v2, v5

    invoke-direct {v4, v1, v2}, Lm0/g0;-><init>(Ljava/lang/String;[Lm0/t;)V

    aput-object v4, v9, v6

    .line 135
    new-instance v1, LE0/c;

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x5

    const/4 v12, -0x1

    const/16 v21, -0x1

    move-object/from16 p8, v1

    move/from16 p9, v5

    move/from16 p10, v2

    move-object/from16 p11, v13

    move/from16 p12, v10

    move/from16 p13, v4

    move/from16 p14, v12

    move/from16 p15, v21

    move-object/from16 p16, v7

    .line 136
    invoke-direct/range {p8 .. p16}, LE0/c;-><init>(II[IIIIILz4/d0;)V

    .line 137
    aput-object v1, v0, v6

    const/4 v1, -0x1

    goto :goto_14

    :cond_16
    move-object/from16 v20, v2

    move-object/from16 v19, v5

    :goto_14
    if-eq v15, v1, :cond_17

    .line 138
    const-string v2, ":cc"

    .line 139
    invoke-static {v14, v2}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    aget-object v4, v8, v11

    .line 141
    invoke-static {v4}, Lz4/H;->t([Ljava/lang/Object;)Lz4/d0;

    move-result-object v4

    .line 142
    new-instance v5, LE0/c;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v12, 0x3

    const/4 v14, 0x1

    const/16 v21, -0x1

    move-object/from16 p8, v5

    move/from16 p9, v12

    move/from16 p10, v14

    move-object/from16 p11, v13

    move/from16 p12, v10

    move/from16 p13, v21

    move/from16 p14, v6

    move/from16 p15, v7

    move-object/from16 p16, v4

    invoke-direct/range {p8 .. p16}, LE0/c;-><init>(II[IIIIILz4/d0;)V

    .line 143
    aput-object v5, v0, v15

    .line 144
    aget-object v4, v8, v11

    invoke-static {v3, v4}, LE0/d;->f(LE0/a;[Lm0/t;)V

    .line 145
    new-instance v4, Lm0/g0;

    aget-object v5, v8, v11

    invoke-direct {v4, v2, v5}, Lm0/g0;-><init>(Ljava/lang/String;[Lm0/t;)V

    aput-object v4, v9, v15

    :cond_17
    const/4 v2, 0x1

    add-int/2addr v11, v2

    move/from16 v6, p3

    move-object/from16 v4, p7

    move-object/from16 v7, v16

    move/from16 v10, v17

    move-object/from16 v1, v18

    move-object/from16 v5, v19

    move-object/from16 v2, v20

    goto/16 :goto_d

    :cond_18
    move-object/from16 v20, v2

    const/4 v11, 0x0

    .line 146
    :goto_15
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_19

    move-object/from16 v1, v20

    .line 147
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF0/g;

    .line 148
    new-instance v3, Lm0/s;

    invoke-direct {v3}, Lm0/s;-><init>()V

    .line 149
    invoke-virtual {v2}, LF0/g;->a()Ljava/lang/String;

    move-result-object v4

    .line 150
    iput-object v4, v3, Lm0/s;->a:Ljava/lang/String;

    .line 151
    invoke-static {v12}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lm0/s;->n:Ljava/lang/String;

    .line 152
    new-instance v4, Lm0/t;

    invoke-direct {v4, v3}, Lm0/t;-><init>(Lm0/s;)V

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, LF0/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    new-instance v3, Lm0/g0;

    const/4 v5, 0x1

    new-array v6, v5, [Lm0/t;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-direct {v3, v2, v6}, Lm0/g0;-><init>(Ljava/lang/String;[Lm0/t;)V

    aput-object v3, v9, v10

    add-int/lit8 v2, v10, 0x1

    .line 155
    new-instance v3, LE0/c;

    new-array v4, v7, [I

    .line 156
    sget-object v5, Lz4/H;->H:Lz4/F;

    .line 157
    sget-object v5, Lz4/d0;->K:Lz4/d0;

    const/4 v6, 0x2

    const/4 v8, -0x1

    const/4 v13, 0x5

    const/4 v14, -0x1

    const/4 v15, -0x1

    move-object/from16 p2, v3

    move/from16 p3, v13

    move/from16 p4, v6

    move-object/from16 p5, v4

    move/from16 p6, v8

    move/from16 p7, v14

    move/from16 p8, v15

    move/from16 p9, v11

    move-object/from16 p10, v5

    .line 158
    invoke-direct/range {p2 .. p10}, LE0/c;-><init>(II[IIIIILz4/d0;)V

    .line 159
    aput-object v3, v0, v10

    const/4 v3, 0x1

    add-int/2addr v11, v3

    move-object/from16 v20, v1

    move v10, v2

    goto :goto_15

    .line 160
    :cond_19
    new-instance v1, LO0/Z;

    invoke-direct {v1, v9}, LO0/Z;-><init>([Lm0/g0;)V

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 161
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, LO0/Z;

    move-object/from16 v2, p0

    iput-object v1, v2, LE0/d;->P:LO0/Z;

    .line 162
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [LE0/c;

    iput-object v0, v2, LE0/d;->Q:[LE0/c;

    return-void
.end method

.method public static b(LF0/a;LF0/a;)Z
    .locals 4

    .line 1
    iget v0, p1, LF0/a;->b:I

    .line 2
    .line 3
    iget v1, p0, LF0/a;->b:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v1, v0, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object p0, p0, LF0/a;->c:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget-object p1, p1, LF0/a;->c:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, LF0/m;

    .line 32
    .line 33
    iget-object p0, p0, LF0/m;->a:Lm0/t;

    .line 34
    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, LF0/m;

    .line 40
    .line 41
    iget-object p1, p1, LF0/m;->a:Lm0/t;

    .line 42
    .line 43
    iget v0, p0, Lm0/t;->f:I

    .line 44
    .line 45
    and-int/lit16 v0, v0, -0x4001

    .line 46
    .line 47
    iget v3, p1, Lm0/t;->f:I

    .line 48
    .line 49
    and-int/lit16 v3, v3, -0x4001

    .line 50
    .line 51
    iget-object p0, p0, Lm0/t;->d:Ljava/lang/String;

    .line 52
    .line 53
    iget-object p1, p1, Lm0/t;->d:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    if-ne v0, v3, :cond_2

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    :cond_2
    return v2

    .line 65
    :cond_3
    :goto_0
    return v1
.end method

.method public static c(Ljava/lang/String;Ljava/util/List;)LF0/f;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, LF0/f;

    .line 13
    .line 14
    iget-object v2, v1, LF0/f;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static f(LE0/a;[Lm0/t;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_2

    .line 4
    .line 5
    aget-object v1, p1, v0

    .line 6
    .line 7
    move-object v2, p0

    .line 8
    check-cast v2, LE0/m;

    .line 9
    .line 10
    iget-object v2, v2, LE0/m;->c:LP0/g;

    .line 11
    .line 12
    check-cast v2, Ll/a;

    .line 13
    .line 14
    iget-boolean v3, v2, Ll/a;->a:Z

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    iget-object v2, v2, Ll/a;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lq1/k;

    .line 21
    .line 22
    check-cast v2, LF2/G;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, LF2/G;->K(Lm0/t;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Lm0/t;->a()Lm0/s;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "application/x-media3-cues"

    .line 35
    .line 36
    invoke-static {v4}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iput-object v4, v3, Lm0/s;->n:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, LF2/G;->D(Lm0/t;)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iput v2, v3, Lm0/s;->L:I

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v4, v1, Lm0/t;->o:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, v1, Lm0/t;->k:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    const-string v4, " "

    .line 63
    .line 64
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    const-string v1, ""

    .line 70
    .line 71
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iput-object v1, v3, Lm0/s;->j:Ljava/lang/String;

    .line 79
    .line 80
    const-wide v1, 0x7fffffffffffffffL

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    iput-wide v1, v3, Lm0/s;->s:J

    .line 86
    .line 87
    invoke-virtual {v3}, Lm0/s;->a()Lm0/t;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :cond_1
    aput-object v1, p1, v0

    .line 92
    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    return-void
.end method

.method public static j(LF0/f;Ljava/util/regex/Pattern;Lm0/t;)[Lm0/t;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object p0, p0, LF0/f;->b:Ljava/lang/String;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-array p0, v1, [Lm0/t;

    .line 8
    .line 9
    aput-object p2, p0, v0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    const-string v3, ";"

    .line 16
    .line 17
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    array-length v2, p0

    .line 22
    new-array v2, v2, [Lm0/t;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    array-length v4, p0

    .line 26
    if-ge v3, v4, :cond_2

    .line 27
    .line 28
    aget-object v4, p0, v3

    .line 29
    .line 30
    invoke-virtual {p1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    new-array p0, v1, [Lm0/t;

    .line 41
    .line 42
    aput-object p2, p0, v0

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-virtual {p2}, Lm0/t;->a()Lm0/s;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v8, p2, Lm0/t;->a:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v8, ":"

    .line 68
    .line 69
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    iput-object v7, v6, Lm0/s;->a:Ljava/lang/String;

    .line 80
    .line 81
    iput v5, v6, Lm0/s;->K:I

    .line 82
    .line 83
    const/4 v5, 0x2

    .line 84
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iput-object v4, v6, Lm0/s;->d:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v4, Lm0/t;

    .line 91
    .line 92
    invoke-direct {v4, v6}, Lm0/t;-><init>(Lm0/s;)V

    .line 93
    .line 94
    .line 95
    aput-object v4, v2, v3

    .line 96
    .line 97
    add-int/2addr v3, v1

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    return-object v2
.end method


# virtual methods
.method public final a(JLB0/I0;)J
    .locals 18

    .line 1
    move-wide/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v7, p0

    .line 4
    .line 5
    iget-object v0, v7, LE0/d;->Y:[LP0/m;

    .line 6
    .line 7
    array-length v3, v0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    :goto_0
    if-ge v5, v3, :cond_6

    .line 11
    .line 12
    aget-object v6, v0, v5

    .line 13
    .line 14
    iget v8, v6, LP0/m;->G:I

    .line 15
    .line 16
    const/4 v9, 0x2

    .line 17
    if-ne v8, v9, :cond_5

    .line 18
    .line 19
    iget-object v0, v6, LP0/m;->K:LE0/b;

    .line 20
    .line 21
    check-cast v0, LE0/p;

    .line 22
    .line 23
    iget-object v0, v0, LE0/p;->i:[LE0/n;

    .line 24
    .line 25
    array-length v3, v0

    .line 26
    :goto_1
    if-ge v4, v3, :cond_4

    .line 27
    .line 28
    aget-object v5, v0, v4

    .line 29
    .line 30
    iget-object v6, v5, LE0/n;->g:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v6, LE0/k;

    .line 33
    .line 34
    if-eqz v6, :cond_3

    .line 35
    .line 36
    invoke-virtual {v5}, LE0/n;->d()J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    const-wide/16 v10, 0x0

    .line 41
    .line 42
    cmp-long v6, v8, v10

    .line 43
    .line 44
    if-nez v6, :cond_0

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_0
    iget-object v0, v5, LE0/n;->g:Ljava/lang/Object;

    .line 48
    .line 49
    move-object v3, v0

    .line 50
    check-cast v3, LE0/k;

    .line 51
    .line 52
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-wide v10, v5, LE0/n;->b:J

    .line 56
    .line 57
    invoke-interface {v3, v1, v2, v10, v11}, LE0/k;->f(JJ)J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    iget-wide v10, v5, LE0/n;->c:J

    .line 62
    .line 63
    add-long/2addr v3, v10

    .line 64
    invoke-virtual {v5, v3, v4}, LE0/n;->f(J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v12

    .line 68
    cmp-long v6, v12, v1

    .line 69
    .line 70
    if-gez v6, :cond_2

    .line 71
    .line 72
    const-wide/16 v14, -0x1

    .line 73
    .line 74
    const-wide/16 v16, 0x1

    .line 75
    .line 76
    cmp-long v6, v8, v14

    .line 77
    .line 78
    if-eqz v6, :cond_1

    .line 79
    .line 80
    check-cast v0, LE0/k;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0}, LE0/k;->h()J

    .line 86
    .line 87
    .line 88
    move-result-wide v14

    .line 89
    add-long/2addr v14, v10

    .line 90
    add-long/2addr v14, v8

    .line 91
    sub-long v14, v14, v16

    .line 92
    .line 93
    cmp-long v0, v3, v14

    .line 94
    .line 95
    if-gez v0, :cond_2

    .line 96
    .line 97
    :cond_1
    add-long v3, v3, v16

    .line 98
    .line 99
    invoke-virtual {v5, v3, v4}, LE0/n;->f(J)J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    move-wide v5, v3

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    move-wide v5, v12

    .line 106
    :goto_2
    move-object/from16 v0, p3

    .line 107
    .line 108
    move-wide/from16 v1, p1

    .line 109
    .line 110
    move-wide v3, v12

    .line 111
    invoke-virtual/range {v0 .. v6}, LB0/I0;->a(JJJ)J

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    goto :goto_4

    .line 116
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    move-wide v0, v1

    .line 120
    :goto_4
    return-wide v0

    .line 121
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_6
    return-wide v1
.end method

.method public final d([II)I
    .locals 4

    .line 1
    aget p2, p1, p2

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v1, p0, LE0/d;->Q:[LE0/c;

    .line 8
    .line 9
    aget-object p2, v1, p2

    .line 10
    .line 11
    iget p2, p2, LE0/c;->e:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    array-length v3, p1

    .line 15
    if-ge v2, v3, :cond_2

    .line 16
    .line 17
    aget v3, p1, v2

    .line 18
    .line 19
    if-ne v3, p2, :cond_1

    .line 20
    .line 21
    aget-object v3, v1, v3

    .line 22
    .line 23
    iget v3, v3, LE0/c;->c:I

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v0
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-object v0, p0, LE0/d;->a0:LO0/j;

    .line 2
    .line 3
    invoke-virtual {v0}, LO0/j;->e()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final g(LB0/d0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LE0/d;->a0:LO0/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LO0/j;->g(LB0/d0;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, LE0/d;->N:LS0/n;

    .line 2
    .line 3
    invoke-interface {v0}, LS0/n;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(J)J
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, LE0/d;->Y:[LP0/m;

    .line 6
    .line 7
    array-length v4, v3

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    :goto_0
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const/4 v9, 0x1

    .line 16
    if-ge v6, v4, :cond_b

    .line 17
    .line 18
    aget-object v10, v3, v6

    .line 19
    .line 20
    iput-wide v1, v10, LP0/m;->Z:J

    .line 21
    .line 22
    iput-boolean v5, v10, LP0/m;->b0:Z

    .line 23
    .line 24
    invoke-virtual {v10}, LP0/m;->A()Z

    .line 25
    .line 26
    .line 27
    move-result v11

    .line 28
    if-eqz v11, :cond_0

    .line 29
    .line 30
    iput-wide v1, v10, LP0/m;->Y:J

    .line 31
    .line 32
    goto/16 :goto_a

    .line 33
    .line 34
    :cond_0
    const/4 v11, 0x0

    .line 35
    :goto_1
    iget-object v12, v10, LP0/m;->Q:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v13

    .line 41
    if-ge v11, v13, :cond_3

    .line 42
    .line 43
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v13

    .line 47
    check-cast v13, LP0/a;

    .line 48
    .line 49
    iget-wide v14, v13, LP0/f;->M:J

    .line 50
    .line 51
    cmp-long v16, v14, v1

    .line 52
    .line 53
    if-nez v16, :cond_1

    .line 54
    .line 55
    iget-wide v14, v13, LP0/a;->Q:J

    .line 56
    .line 57
    cmp-long v17, v14, v7

    .line 58
    .line 59
    if-nez v17, :cond_1

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_1
    if-lez v16, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    :goto_2
    const/4 v13, 0x0

    .line 69
    :goto_3
    iget-object v7, v10, LP0/m;->S:LO0/T;

    .line 70
    .line 71
    if-eqz v13, :cond_4

    .line 72
    .line 73
    invoke-virtual {v13, v5}, LP0/a;->c(I)I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    invoke-virtual {v7, v8}, LO0/T;->G(I)Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    goto :goto_6

    .line 82
    :cond_4
    invoke-virtual {v10}, LP0/m;->e()J

    .line 83
    .line 84
    .line 85
    move-result-wide v13

    .line 86
    const-wide/high16 v16, -0x8000000000000000L

    .line 87
    .line 88
    cmp-long v8, v13, v16

    .line 89
    .line 90
    if-eqz v8, :cond_6

    .line 91
    .line 92
    cmp-long v8, v1, v13

    .line 93
    .line 94
    if-gez v8, :cond_5

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_5
    const/4 v8, 0x0

    .line 98
    goto :goto_5

    .line 99
    :cond_6
    :goto_4
    const/4 v8, 0x1

    .line 100
    :goto_5
    invoke-virtual {v7, v1, v2, v8}, LO0/T;->H(JZ)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    :goto_6
    iget-object v11, v10, LP0/m;->T:[LO0/T;

    .line 105
    .line 106
    if-eqz v8, :cond_7

    .line 107
    .line 108
    invoke-virtual {v7}, LO0/T;->t()I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    invoke-virtual {v10, v7, v5}, LP0/m;->C(II)I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    iput v7, v10, LP0/m;->a0:I

    .line 117
    .line 118
    array-length v7, v11

    .line 119
    const/4 v8, 0x0

    .line 120
    :goto_7
    if-ge v8, v7, :cond_a

    .line 121
    .line 122
    aget-object v10, v11, v8

    .line 123
    .line 124
    invoke-virtual {v10, v1, v2, v9}, LO0/T;->H(JZ)Z

    .line 125
    .line 126
    .line 127
    add-int/lit8 v8, v8, 0x1

    .line 128
    .line 129
    goto :goto_7

    .line 130
    :cond_7
    iput-wide v1, v10, LP0/m;->Y:J

    .line 131
    .line 132
    iput-boolean v5, v10, LP0/m;->d0:Z

    .line 133
    .line 134
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 135
    .line 136
    .line 137
    iput v5, v10, LP0/m;->a0:I

    .line 138
    .line 139
    iget-object v8, v10, LP0/m;->O:LS0/m;

    .line 140
    .line 141
    invoke-virtual {v8}, LS0/m;->e()Z

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-eqz v9, :cond_9

    .line 146
    .line 147
    invoke-virtual {v7}, LO0/T;->k()V

    .line 148
    .line 149
    .line 150
    array-length v7, v11

    .line 151
    const/4 v9, 0x0

    .line 152
    :goto_8
    if-ge v9, v7, :cond_8

    .line 153
    .line 154
    aget-object v10, v11, v9

    .line 155
    .line 156
    invoke-virtual {v10}, LO0/T;->k()V

    .line 157
    .line 158
    .line 159
    add-int/lit8 v9, v9, 0x1

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_8
    invoke-virtual {v8}, LS0/m;->a()V

    .line 163
    .line 164
    .line 165
    goto :goto_a

    .line 166
    :cond_9
    const/4 v9, 0x0

    .line 167
    iput-object v9, v8, LS0/m;->I:Ljava/io/IOException;

    .line 168
    .line 169
    invoke-virtual {v7, v5}, LO0/T;->E(Z)V

    .line 170
    .line 171
    .line 172
    array-length v7, v11

    .line 173
    const/4 v8, 0x0

    .line 174
    :goto_9
    if-ge v8, v7, :cond_a

    .line 175
    .line 176
    aget-object v9, v11, v8

    .line 177
    .line 178
    invoke-virtual {v9, v5}, LO0/T;->E(Z)V

    .line 179
    .line 180
    .line 181
    add-int/lit8 v8, v8, 0x1

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_a
    :goto_a
    add-int/lit8 v6, v6, 0x1

    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_b
    iget-object v3, v0, LE0/d;->Z:[LE0/q;

    .line 189
    .line 190
    array-length v4, v3

    .line 191
    :goto_b
    if-ge v5, v4, :cond_d

    .line 192
    .line 193
    aget-object v6, v3, v5

    .line 194
    .line 195
    iget-object v10, v6, LE0/q;->I:[J

    .line 196
    .line 197
    invoke-static {v10, v1, v2, v9}, Lp0/M;->a([JJZ)I

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    iput v10, v6, LE0/q;->M:I

    .line 202
    .line 203
    iget-boolean v11, v6, LE0/q;->J:Z

    .line 204
    .line 205
    if-eqz v11, :cond_c

    .line 206
    .line 207
    iget-object v11, v6, LE0/q;->I:[J

    .line 208
    .line 209
    array-length v11, v11

    .line 210
    if-ne v10, v11, :cond_c

    .line 211
    .line 212
    move-wide v10, v1

    .line 213
    goto :goto_c

    .line 214
    :cond_c
    move-wide v10, v7

    .line 215
    :goto_c
    iput-wide v10, v6, LE0/q;->N:J

    .line 216
    .line 217
    add-int/lit8 v5, v5, 0x1

    .line 218
    .line 219
    goto :goto_b

    .line 220
    :cond_d
    return-wide v1
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, LE0/d;->a0:LO0/j;

    .line 2
    .line 3
    invoke-virtual {v0}, LO0/j;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final l([LR0/t;[Z[LO0/U;[ZJ)J
    .locals 37

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v14, p3

    .line 6
    .line 7
    move-wide/from16 v12, p5

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    new-array v11, v1, [I

    .line 11
    .line 12
    const/4 v10, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    array-length v2, v0

    .line 15
    const/4 v8, -0x1

    .line 16
    if-ge v1, v2, :cond_1

    .line 17
    .line 18
    aget-object v2, v0, v1

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    check-cast v2, LR0/c;

    .line 23
    .line 24
    iget-object v2, v2, LR0/c;->a:Lm0/g0;

    .line 25
    .line 26
    iget-object v3, v15, LE0/d;->P:LO0/Z;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, LO0/Z;->b(Lm0/g0;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    aput v2, v11, v1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    aput v8, v11, v1

    .line 36
    .line 37
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    :goto_2
    array-length v2, v0

    .line 42
    const/16 v16, 0x0

    .line 43
    .line 44
    if-ge v1, v2, :cond_6

    .line 45
    .line 46
    aget-object v2, v0, v1

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    aget-boolean v2, p2, v1

    .line 51
    .line 52
    if-nez v2, :cond_5

    .line 53
    .line 54
    :cond_2
    aget-object v2, v14, v1

    .line 55
    .line 56
    instance-of v3, v2, LP0/m;

    .line 57
    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    check-cast v2, LP0/m;

    .line 61
    .line 62
    invoke-virtual {v2, v15}, LP0/m;->D(LP0/l;)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    instance-of v3, v2, LP0/k;

    .line 67
    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    check-cast v2, LP0/k;

    .line 71
    .line 72
    invoke-virtual {v2}, LP0/k;->c()V

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_3
    aput-object v16, v14, v1

    .line 76
    .line 77
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_6
    const/4 v1, 0x0

    .line 81
    :goto_4
    array-length v2, v0

    .line 82
    if-ge v1, v2, :cond_c

    .line 83
    .line 84
    aget-object v2, v14, v1

    .line 85
    .line 86
    instance-of v3, v2, LO0/m;

    .line 87
    .line 88
    if-nez v3, :cond_7

    .line 89
    .line 90
    instance-of v2, v2, LP0/k;

    .line 91
    .line 92
    if-eqz v2, :cond_b

    .line 93
    .line 94
    :cond_7
    invoke-virtual {v15, v11, v1}, LE0/d;->d([II)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-ne v2, v8, :cond_8

    .line 99
    .line 100
    aget-object v2, v14, v1

    .line 101
    .line 102
    instance-of v2, v2, LO0/m;

    .line 103
    .line 104
    if-nez v2, :cond_b

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_8
    aget-object v3, v14, v1

    .line 108
    .line 109
    instance-of v4, v3, LP0/k;

    .line 110
    .line 111
    if-eqz v4, :cond_9

    .line 112
    .line 113
    check-cast v3, LP0/k;

    .line 114
    .line 115
    iget-object v3, v3, LP0/k;->G:LP0/m;

    .line 116
    .line 117
    aget-object v2, v14, v2

    .line 118
    .line 119
    if-ne v3, v2, :cond_9

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_9
    :goto_5
    aget-object v2, v14, v1

    .line 123
    .line 124
    instance-of v3, v2, LP0/k;

    .line 125
    .line 126
    if-eqz v3, :cond_a

    .line 127
    .line 128
    check-cast v2, LP0/k;

    .line 129
    .line 130
    invoke-virtual {v2}, LP0/k;->c()V

    .line 131
    .line 132
    .line 133
    :cond_a
    aput-object v16, v14, v1

    .line 134
    .line 135
    :cond_b
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_c
    const/4 v9, 0x0

    .line 139
    :goto_7
    array-length v1, v0

    .line 140
    const/4 v2, 0x1

    .line 141
    if-ge v9, v1, :cond_17

    .line 142
    .line 143
    aget-object v1, v0, v9

    .line 144
    .line 145
    if-nez v1, :cond_d

    .line 146
    .line 147
    move/from16 v17, v9

    .line 148
    .line 149
    move-object/from16 v35, v11

    .line 150
    .line 151
    move-object v0, v14

    .line 152
    goto/16 :goto_e

    .line 153
    .line 154
    :cond_d
    aget-object v3, v14, v9

    .line 155
    .line 156
    if-nez v3, :cond_15

    .line 157
    .line 158
    aput-boolean v2, p4, v9

    .line 159
    .line 160
    aget v3, v11, v9

    .line 161
    .line 162
    iget-object v4, v15, LE0/d;->Q:[LE0/c;

    .line 163
    .line 164
    aget-object v3, v4, v3

    .line 165
    .line 166
    iget v4, v3, LE0/c;->c:I

    .line 167
    .line 168
    if-nez v4, :cond_14

    .line 169
    .line 170
    iget v4, v3, LE0/c;->f:I

    .line 171
    .line 172
    if-eq v4, v8, :cond_e

    .line 173
    .line 174
    const/16 v27, 0x1

    .line 175
    .line 176
    goto :goto_8

    .line 177
    :cond_e
    const/16 v27, 0x0

    .line 178
    .line 179
    :goto_8
    if-eqz v27, :cond_f

    .line 180
    .line 181
    iget-object v5, v15, LE0/d;->P:LO0/Z;

    .line 182
    .line 183
    invoke-virtual {v5, v4}, LO0/Z;->a(I)Lm0/g0;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    const/4 v5, 0x1

    .line 188
    goto :goto_9

    .line 189
    :cond_f
    move-object/from16 v4, v16

    .line 190
    .line 191
    const/4 v5, 0x0

    .line 192
    :goto_9
    iget v6, v3, LE0/c;->g:I

    .line 193
    .line 194
    if-eq v6, v8, :cond_10

    .line 195
    .line 196
    iget-object v7, v15, LE0/d;->Q:[LE0/c;

    .line 197
    .line 198
    aget-object v6, v7, v6

    .line 199
    .line 200
    iget-object v6, v6, LE0/c;->h:Lz4/H;

    .line 201
    .line 202
    goto :goto_a

    .line 203
    :cond_10
    invoke-static {}, Lz4/H;->w()Lz4/d0;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    :goto_a
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    add-int/2addr v7, v5

    .line 212
    new-array v5, v7, [Lm0/t;

    .line 213
    .line 214
    new-array v7, v7, [I

    .line 215
    .line 216
    if-eqz v27, :cond_11

    .line 217
    .line 218
    invoke-virtual {v4}, Lm0/g0;->a()Lm0/t;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    aput-object v4, v5, v10

    .line 223
    .line 224
    const/4 v4, 0x5

    .line 225
    aput v4, v7, v10

    .line 226
    .line 227
    const/4 v4, 0x1

    .line 228
    goto :goto_b

    .line 229
    :cond_11
    const/4 v4, 0x0

    .line 230
    :goto_b
    new-instance v8, Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .line 234
    .line 235
    :goto_c
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-ge v10, v2, :cond_12

    .line 240
    .line 241
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    check-cast v2, Lm0/t;

    .line 246
    .line 247
    aput-object v2, v5, v4

    .line 248
    .line 249
    const/16 v17, 0x3

    .line 250
    .line 251
    aput v17, v7, v4

    .line 252
    .line 253
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    const/4 v2, 0x1

    .line 257
    add-int/2addr v4, v2

    .line 258
    add-int/lit8 v10, v10, 0x1

    .line 259
    .line 260
    goto :goto_c

    .line 261
    :cond_12
    iget-object v2, v15, LE0/d;->b0:LF0/c;

    .line 262
    .line 263
    iget-boolean v2, v2, LF0/c;->d:Z

    .line 264
    .line 265
    if-eqz v2, :cond_13

    .line 266
    .line 267
    if-eqz v27, :cond_13

    .line 268
    .line 269
    iget-object v2, v15, LE0/d;->S:LE0/t;

    .line 270
    .line 271
    invoke-virtual {v2}, LE0/t;->a()LE0/s;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    move-object v10, v2

    .line 276
    goto :goto_d

    .line 277
    :cond_13
    move-object/from16 v10, v16

    .line 278
    .line 279
    :goto_d
    iget-object v2, v15, LE0/d;->H:LE0/a;

    .line 280
    .line 281
    iget-object v4, v15, LE0/d;->N:LS0/n;

    .line 282
    .line 283
    iget-object v6, v15, LE0/d;->b0:LF0/c;

    .line 284
    .line 285
    move/from16 v32, v9

    .line 286
    .line 287
    iget-object v9, v15, LE0/d;->L:Lm2/i;

    .line 288
    .line 289
    move-object/from16 v33, v11

    .line 290
    .line 291
    iget v11, v15, LE0/d;->c0:I

    .line 292
    .line 293
    iget-object v12, v3, LE0/c;->a:[I

    .line 294
    .line 295
    iget v13, v3, LE0/c;->b:I

    .line 296
    .line 297
    move-object/from16 v34, v7

    .line 298
    .line 299
    move-object/from16 v28, v8

    .line 300
    .line 301
    iget-wide v7, v15, LE0/d;->M:J

    .line 302
    .line 303
    iget-object v14, v15, LE0/d;->I:Ls0/O;

    .line 304
    .line 305
    iget-object v0, v15, LE0/d;->W:LC0/I;

    .line 306
    .line 307
    move-object/from16 v17, v2

    .line 308
    .line 309
    check-cast v17, LE0/m;

    .line 310
    .line 311
    move-object/from16 v18, v4

    .line 312
    .line 313
    move-object/from16 v19, v6

    .line 314
    .line 315
    move-object/from16 v20, v9

    .line 316
    .line 317
    move/from16 v21, v11

    .line 318
    .line 319
    move-object/from16 v22, v12

    .line 320
    .line 321
    move-object/from16 v23, v1

    .line 322
    .line 323
    move/from16 v24, v13

    .line 324
    .line 325
    move-wide/from16 v25, v7

    .line 326
    .line 327
    move-object/from16 v29, v10

    .line 328
    .line 329
    move-object/from16 v30, v14

    .line 330
    .line 331
    move-object/from16 v31, v0

    .line 332
    .line 333
    invoke-virtual/range {v17 .. v31}, LE0/m;->a(LS0/n;LF0/c;Lm2/i;I[ILR0/t;IJZLjava/util/ArrayList;LE0/s;Ls0/O;LC0/I;)LE0/p;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    new-instance v14, LP0/m;

    .line 338
    .line 339
    iget v2, v3, LE0/c;->b:I

    .line 340
    .line 341
    iget-object v7, v15, LE0/d;->O:LS0/d;

    .line 342
    .line 343
    iget-object v11, v15, LE0/d;->J:LG0/r;

    .line 344
    .line 345
    iget-object v12, v15, LE0/d;->V:LG0/o;

    .line 346
    .line 347
    iget-object v13, v15, LE0/d;->K:LU4/b;

    .line 348
    .line 349
    iget-object v8, v15, LE0/d;->U:LO0/D;

    .line 350
    .line 351
    iget-boolean v9, v15, LE0/d;->e0:Z

    .line 352
    .line 353
    move-object v1, v14

    .line 354
    move-object/from16 v3, v34

    .line 355
    .line 356
    move-object v4, v5

    .line 357
    move-object v5, v0

    .line 358
    move-object/from16 v6, p0

    .line 359
    .line 360
    move-object/from16 v18, v8

    .line 361
    .line 362
    move/from16 v19, v9

    .line 363
    .line 364
    move/from16 v17, v32

    .line 365
    .line 366
    const/4 v0, -0x1

    .line 367
    move-wide/from16 v8, p5

    .line 368
    .line 369
    move-object v0, v10

    .line 370
    move-object v10, v11

    .line 371
    move-object/from16 v35, v33

    .line 372
    .line 373
    move-object v11, v12

    .line 374
    move-object v12, v13

    .line 375
    move-object/from16 v13, v18

    .line 376
    .line 377
    move-object/from16 v36, v14

    .line 378
    .line 379
    move/from16 v14, v19

    .line 380
    .line 381
    invoke-direct/range {v1 .. v14}, LP0/m;-><init>(I[I[Lm0/t;LE0/p;LO0/V;LS0/d;JLG0/r;LG0/o;LU4/b;LO0/D;Z)V

    .line 382
    .line 383
    .line 384
    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v1, v15, LE0/d;->T:Ljava/util/IdentityHashMap;

    .line 386
    .line 387
    move-object/from16 v2, v36

    .line 388
    .line 389
    invoke-virtual {v1, v2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    move-object/from16 v0, p3

    .line 394
    .line 395
    aput-object v2, v0, v17

    .line 396
    .line 397
    goto :goto_e

    .line 398
    :catchall_0
    move-exception v0

    .line 399
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    throw v0

    .line 401
    :cond_14
    move/from16 v17, v9

    .line 402
    .line 403
    move-object/from16 v35, v11

    .line 404
    .line 405
    move-object v0, v14

    .line 406
    const/4 v2, 0x2

    .line 407
    if-ne v4, v2, :cond_16

    .line 408
    .line 409
    iget-object v2, v15, LE0/d;->d0:Ljava/util/List;

    .line 410
    .line 411
    iget v3, v3, LE0/c;->d:I

    .line 412
    .line 413
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    check-cast v2, LF0/g;

    .line 418
    .line 419
    check-cast v1, LR0/c;

    .line 420
    .line 421
    invoke-virtual {v1}, LR0/c;->m()Lm0/g0;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {v1}, Lm0/g0;->a()Lm0/t;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    new-instance v3, LE0/q;

    .line 430
    .line 431
    iget-object v4, v15, LE0/d;->b0:LF0/c;

    .line 432
    .line 433
    iget-boolean v4, v4, LF0/c;->d:Z

    .line 434
    .line 435
    invoke-direct {v3, v2, v1, v4}, LE0/q;-><init>(LF0/g;Lm0/t;Z)V

    .line 436
    .line 437
    .line 438
    aput-object v3, v0, v17

    .line 439
    .line 440
    goto :goto_e

    .line 441
    :cond_15
    move/from16 v17, v9

    .line 442
    .line 443
    move-object/from16 v35, v11

    .line 444
    .line 445
    move-object v0, v14

    .line 446
    instance-of v2, v3, LP0/m;

    .line 447
    .line 448
    if-eqz v2, :cond_16

    .line 449
    .line 450
    check-cast v3, LP0/m;

    .line 451
    .line 452
    invoke-virtual {v3}, LP0/m;->x()LE0/b;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    check-cast v2, LE0/p;

    .line 457
    .line 458
    invoke-virtual {v2, v1}, LE0/p;->c(LR0/t;)V

    .line 459
    .line 460
    .line 461
    :cond_16
    :goto_e
    add-int/lit8 v9, v17, 0x1

    .line 462
    .line 463
    move-wide/from16 v12, p5

    .line 464
    .line 465
    move-object v14, v0

    .line 466
    move-object/from16 v11, v35

    .line 467
    .line 468
    const/4 v8, -0x1

    .line 469
    const/4 v10, 0x0

    .line 470
    move-object/from16 v0, p1

    .line 471
    .line 472
    goto/16 :goto_7

    .line 473
    .line 474
    :cond_17
    move-object/from16 v35, v11

    .line 475
    .line 476
    move-object v0, v14

    .line 477
    move-object/from16 v1, p1

    .line 478
    .line 479
    const/4 v10, 0x0

    .line 480
    :goto_f
    array-length v2, v1

    .line 481
    if-ge v10, v2, :cond_1b

    .line 482
    .line 483
    aget-object v2, v0, v10

    .line 484
    .line 485
    if-nez v2, :cond_1a

    .line 486
    .line 487
    aget-object v2, v1, v10

    .line 488
    .line 489
    if-eqz v2, :cond_1a

    .line 490
    .line 491
    move-object/from16 v2, v35

    .line 492
    .line 493
    aget v3, v2, v10

    .line 494
    .line 495
    iget-object v4, v15, LE0/d;->Q:[LE0/c;

    .line 496
    .line 497
    aget-object v3, v4, v3

    .line 498
    .line 499
    iget v4, v3, LE0/c;->c:I

    .line 500
    .line 501
    const/4 v5, 0x1

    .line 502
    if-ne v4, v5, :cond_19

    .line 503
    .line 504
    invoke-virtual {v15, v2, v10}, LE0/d;->d([II)I

    .line 505
    .line 506
    .line 507
    move-result v4

    .line 508
    const/4 v6, -0x1

    .line 509
    if-ne v4, v6, :cond_18

    .line 510
    .line 511
    new-instance v3, LO0/m;

    .line 512
    .line 513
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 514
    .line 515
    .line 516
    aput-object v3, v0, v10

    .line 517
    .line 518
    move-wide/from16 v7, p5

    .line 519
    .line 520
    goto :goto_11

    .line 521
    :cond_18
    aget-object v4, v0, v4

    .line 522
    .line 523
    check-cast v4, LP0/m;

    .line 524
    .line 525
    iget v3, v3, LE0/c;->b:I

    .line 526
    .line 527
    move-wide/from16 v7, p5

    .line 528
    .line 529
    invoke-virtual {v4, v3, v7, v8}, LP0/m;->E(IJ)LP0/k;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    aput-object v3, v0, v10

    .line 534
    .line 535
    goto :goto_11

    .line 536
    :cond_19
    move-wide/from16 v7, p5

    .line 537
    .line 538
    :goto_10
    const/4 v6, -0x1

    .line 539
    goto :goto_11

    .line 540
    :cond_1a
    move-wide/from16 v7, p5

    .line 541
    .line 542
    move-object/from16 v2, v35

    .line 543
    .line 544
    const/4 v5, 0x1

    .line 545
    goto :goto_10

    .line 546
    :goto_11
    add-int/lit8 v10, v10, 0x1

    .line 547
    .line 548
    move-object/from16 v35, v2

    .line 549
    .line 550
    goto :goto_f

    .line 551
    :cond_1b
    move-wide/from16 v7, p5

    .line 552
    .line 553
    new-instance v1, Ljava/util/ArrayList;

    .line 554
    .line 555
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .line 557
    .line 558
    new-instance v2, Ljava/util/ArrayList;

    .line 559
    .line 560
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .line 562
    .line 563
    array-length v3, v0

    .line 564
    const/4 v10, 0x0

    .line 565
    :goto_12
    if-ge v10, v3, :cond_1e

    .line 566
    .line 567
    aget-object v4, v0, v10

    .line 568
    .line 569
    instance-of v5, v4, LP0/m;

    .line 570
    .line 571
    if-eqz v5, :cond_1c

    .line 572
    .line 573
    check-cast v4, LP0/m;

    .line 574
    .line 575
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    goto :goto_13

    .line 579
    :cond_1c
    instance-of v5, v4, LE0/q;

    .line 580
    .line 581
    if-eqz v5, :cond_1d

    .line 582
    .line 583
    check-cast v4, LE0/q;

    .line 584
    .line 585
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    :cond_1d
    :goto_13
    add-int/lit8 v10, v10, 0x1

    .line 589
    .line 590
    goto :goto_12

    .line 591
    :cond_1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    new-array v0, v0, [LP0/m;

    .line 596
    .line 597
    iput-object v0, v15, LE0/d;->Y:[LP0/m;

    .line 598
    .line 599
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    new-array v0, v0, [LE0/q;

    .line 607
    .line 608
    iput-object v0, v15, LE0/d;->Z:[LE0/q;

    .line 609
    .line 610
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    iget-object v0, v15, LE0/d;->R:LU4/b;

    .line 614
    .line 615
    new-instance v2, LC0/h;

    .line 616
    .line 617
    const/4 v3, 0x4

    .line 618
    invoke-direct {v2, v3}, LC0/h;-><init>(I)V

    .line 619
    .line 620
    .line 621
    invoke-static {v2, v1}, Lo3/r;->i(LC0/h;Ljava/util/List;)Ljava/util/AbstractList;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 626
    .line 627
    .line 628
    invoke-static {v1, v2}, LU4/b;->N(Ljava/util/ArrayList;Ljava/util/AbstractList;)LO0/j;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    iput-object v0, v15, LE0/d;->a0:LO0/j;

    .line 633
    .line 634
    iget-boolean v0, v15, LE0/d;->e0:Z

    .line 635
    .line 636
    if-eqz v0, :cond_1f

    .line 637
    .line 638
    const/4 v0, 0x0

    .line 639
    iput-boolean v0, v15, LE0/d;->e0:Z

    .line 640
    .line 641
    iput-wide v7, v15, LE0/d;->f0:J

    .line 642
    .line 643
    :cond_1f
    return-wide v7
.end method

.method public final m(LO0/v;J)V
    .locals 0

    .line 1
    iput-object p1, p0, LE0/d;->X:LO0/v;

    .line 2
    .line 3
    invoke-interface {p1, p0}, LO0/v;->t(LO0/w;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final q()J
    .locals 6

    .line 1
    iget-object v0, p0, LE0/d;->Y:[LP0/m;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-boolean v5, v4, LP0/m;->c0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    iput-boolean v2, v4, LP0/m;->c0:Z

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    iget-wide v0, p0, LE0/d;->f0:J

    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    iput-boolean v2, v4, LP0/m;->c0:Z

    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    return-wide v0
.end method

.method public final r(LO0/W;)V
    .locals 0

    .line 1
    check-cast p1, LP0/m;

    .line 2
    .line 3
    iget-object p1, p0, LE0/d;->X:LO0/v;

    .line 4
    .line 5
    invoke-interface {p1, p0}, LO0/V;->r(LO0/W;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final s()LO0/Z;
    .locals 1

    .line 1
    iget-object v0, p0, LE0/d;->P:LO0/Z;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()J
    .locals 2

    .line 1
    iget-object v0, p0, LE0/d;->a0:LO0/j;

    .line 2
    .line 3
    invoke-virtual {v0}, LO0/j;->u()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final v(JZ)V
    .locals 11

    .line 1
    iget-object v0, p0, LE0/d;->Y:[LP0/m;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_4

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    invoke-virtual {v4}, LP0/m;->A()Z

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_0
    iget-object v5, v4, LP0/m;->S:LO0/T;

    .line 18
    .line 19
    iget v6, v5, LO0/T;->q:I

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    invoke-virtual {v5, p1, p2, p3, v7}, LO0/T;->j(JZZ)V

    .line 23
    .line 24
    .line 25
    iget-object v5, v4, LP0/m;->S:LO0/T;

    .line 26
    .line 27
    iget v7, v5, LO0/T;->q:I

    .line 28
    .line 29
    if-le v7, v6, :cond_2

    .line 30
    .line 31
    monitor-enter v5

    .line 32
    :try_start_0
    iget v6, v5, LO0/T;->p:I

    .line 33
    .line 34
    if-nez v6, :cond_1

    .line 35
    .line 36
    const-wide/high16 v8, -0x8000000000000000L

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v6, v5, LO0/T;->n:[J

    .line 40
    .line 41
    iget v8, v5, LO0/T;->r:I

    .line 42
    .line 43
    aget-wide v8, v6, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    :goto_1
    monitor-exit v5

    .line 46
    const/4 v5, 0x0

    .line 47
    :goto_2
    iget-object v6, v4, LP0/m;->T:[LO0/T;

    .line 48
    .line 49
    array-length v10, v6

    .line 50
    if-ge v5, v10, :cond_2

    .line 51
    .line 52
    aget-object v6, v6, v5

    .line 53
    .line 54
    iget-object v10, v4, LP0/m;->J:[Z

    .line 55
    .line 56
    aget-boolean v10, v10, v5

    .line 57
    .line 58
    invoke-virtual {v6, v8, v9, p3, v10}, LO0/T;->j(JZZ)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    monitor-exit v5

    .line 66
    throw p1

    .line 67
    :cond_2
    invoke-virtual {v4, v7, v2}, LP0/m;->C(II)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    iget v6, v4, LP0/m;->a0:I

    .line 72
    .line 73
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-lez v5, :cond_3

    .line 78
    .line 79
    iget-object v6, v4, LP0/m;->Q:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-static {v2, v5, v6}, Lp0/M;->W(IILjava/util/ArrayList;)V

    .line 82
    .line 83
    .line 84
    iget v6, v4, LP0/m;->a0:I

    .line 85
    .line 86
    sub-int/2addr v6, v5

    .line 87
    iput v6, v4, LP0/m;->a0:I

    .line 88
    .line 89
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    return-void
.end method

.method public final w(J)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LE0/d;->Y:[LP0/m;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v4, 0x0

    .line 7
    :goto_0
    if-ge v4, v2, :cond_6

    .line 8
    .line 9
    aget-object v5, v1, v4

    .line 10
    .line 11
    iget-object v6, v5, LP0/m;->O:LS0/m;

    .line 12
    .line 13
    invoke-virtual {v6}, LS0/m;->e()Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-nez v6, :cond_5

    .line 18
    .line 19
    iget-object v6, v0, LE0/d;->b0:LF0/c;

    .line 20
    .line 21
    iget v7, v0, LE0/d;->c0:I

    .line 22
    .line 23
    invoke-virtual {v6, v7}, LF0/c;->d(I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v10

    .line 27
    iget-object v6, v5, LP0/m;->O:LS0/m;

    .line 28
    .line 29
    invoke-virtual {v6}, LS0/m;->e()Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    xor-int/lit8 v6, v6, 0x1

    .line 34
    .line 35
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, LP0/m;->A()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-nez v6, :cond_5

    .line 43
    .line 44
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    cmp-long v8, v10, v6

    .line 50
    .line 51
    if-eqz v8, :cond_5

    .line 52
    .line 53
    iget-object v8, v5, LP0/m;->Q:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_0

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_0
    invoke-virtual {v5}, LP0/m;->y()LP0/a;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    iget-wide v12, v8, LP0/a;->R:J

    .line 67
    .line 68
    cmp-long v9, v12, v6

    .line 69
    .line 70
    if-eqz v9, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    iget-wide v12, v8, LP0/f;->N:J

    .line 74
    .line 75
    :goto_1
    cmp-long v6, v12, v10

    .line 76
    .line 77
    if-gtz v6, :cond_2

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_2
    iget-object v6, v5, LP0/m;->S:LO0/T;

    .line 81
    .line 82
    invoke-virtual {v6}, LO0/T;->q()J

    .line 83
    .line 84
    .line 85
    move-result-wide v12

    .line 86
    cmp-long v7, v12, v10

    .line 87
    .line 88
    if-gtz v7, :cond_3

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_3
    invoke-virtual {v6}, LO0/T;->r()J

    .line 92
    .line 93
    .line 94
    move-result-wide v7

    .line 95
    const-wide/16 v14, 0x1

    .line 96
    .line 97
    add-long/2addr v7, v14

    .line 98
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 99
    .line 100
    .line 101
    move-result-wide v7

    .line 102
    invoke-virtual {v6, v7, v8}, LO0/T;->l(J)V

    .line 103
    .line 104
    .line 105
    iget-object v6, v5, LP0/m;->T:[LO0/T;

    .line 106
    .line 107
    array-length v7, v6

    .line 108
    const/4 v8, 0x0

    .line 109
    :goto_2
    if-ge v8, v7, :cond_4

    .line 110
    .line 111
    aget-object v9, v6, v8

    .line 112
    .line 113
    invoke-virtual {v9}, LO0/T;->r()J

    .line 114
    .line 115
    .line 116
    move-result-wide v16

    .line 117
    move/from16 v18, v4

    .line 118
    .line 119
    add-long v3, v16, v14

    .line 120
    .line 121
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 122
    .line 123
    .line 124
    move-result-wide v3

    .line 125
    invoke-virtual {v9, v3, v4}, LO0/T;->l(J)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v8, v8, 0x1

    .line 129
    .line 130
    move/from16 v4, v18

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    move/from16 v18, v4

    .line 134
    .line 135
    iget-object v8, v5, LP0/m;->M:LO0/D;

    .line 136
    .line 137
    iget v9, v5, LP0/m;->G:I

    .line 138
    .line 139
    invoke-virtual/range {v8 .. v13}, LO0/D;->h(IJJ)V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_5
    :goto_3
    move/from16 v18, v4

    .line 144
    .line 145
    :goto_4
    add-int/lit8 v4, v18, 0x1

    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_6
    iget-object v1, v0, LE0/d;->a0:LO0/j;

    .line 150
    .line 151
    move-wide/from16 v2, p1

    .line 152
    .line 153
    invoke-virtual {v1, v2, v3}, LO0/j;->w(J)V

    .line 154
    .line 155
    .line 156
    return-void
.end method
