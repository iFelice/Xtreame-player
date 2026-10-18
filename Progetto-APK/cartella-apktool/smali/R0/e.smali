.class public final synthetic LR0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR0/n;


# instance fields
.field public final synthetic G:LR0/q;

.field public final synthetic H:LR0/k;

.field public final synthetic I:Z

.field public final synthetic J:[I


# direct methods
.method public synthetic constructor <init>(LR0/q;LR0/k;Z[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LR0/e;->G:LR0/q;

    .line 5
    .line 6
    iput-object p2, p0, LR0/e;->H:LR0/k;

    .line 7
    .line 8
    iput-boolean p3, p0, LR0/e;->I:Z

    .line 9
    .line 10
    iput-object p4, p0, LR0/e;->J:[I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final d(ILm0/g0;[I)Lz4/d0;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LR0/e;->G:LR0/q;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v11, LR0/f;

    .line 9
    .line 10
    iget-object v12, v0, LR0/e;->H:LR0/k;

    .line 11
    .line 12
    invoke-direct {v11, v1, v12}, LR0/f;-><init>(LR0/q;LR0/k;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, LR0/e;->J:[I

    .line 16
    .line 17
    aget v1, v1, p1

    .line 18
    .line 19
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 20
    .line 21
    .line 22
    move-result-object v13

    .line 23
    const/4 v2, 0x0

    .line 24
    move-object/from16 v15, p2

    .line 25
    .line 26
    const/4 v14, 0x0

    .line 27
    :goto_0
    iget v2, v15, Lm0/g0;->a:I

    .line 28
    .line 29
    if-ge v14, v2, :cond_0

    .line 30
    .line 31
    new-instance v10, LR0/g;

    .line 32
    .line 33
    aget v7, p3, v14

    .line 34
    .line 35
    iget-boolean v8, v0, LR0/e;->I:Z

    .line 36
    .line 37
    move-object v2, v10

    .line 38
    move/from16 v3, p1

    .line 39
    .line 40
    move-object/from16 v4, p2

    .line 41
    .line 42
    move v5, v14

    .line 43
    move-object v6, v12

    .line 44
    move-object v9, v11

    .line 45
    move-object v0, v10

    .line 46
    move v10, v1

    .line 47
    invoke-direct/range {v2 .. v10}, LR0/g;-><init>(ILm0/g0;ILR0/k;IZLR0/f;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v13, v0}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v14, v14, 0x1

    .line 54
    .line 55
    move-object/from16 v0, p0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v13}, Lz4/E;->m0()Lz4/d0;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
