.class public final LI0/l;
.super LI0/p;
.source "SourceFile"


# instance fields
.field public final d:I

.field public final e:J

.field public final f:Z

.field public final g:Z

.field public final h:J

.field public final i:Z

.field public final j:I

.field public final k:J

.field public final l:I

.field public final m:J

.field public final n:J

.field public final o:Z

.field public final p:Z

.field public final q:Lm0/n;

.field public final r:Lz4/H;

.field public final s:Lz4/H;

.field public final t:Lz4/J;

.field public final u:J

.field public final v:LI0/k;

.field public final w:Lz4/H;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLm0/n;Ljava/util/List;Ljava/util/List;LI0/k;Ljava/util/Map;Ljava/util/List;)V
    .locals 10

    .line 1
    move-object v0, p0

    move-wide v1, p4

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p18

    .line 2
    invoke-direct {p0, p2, p3, v5}, LI0/p;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    move v3, p1

    .line 3
    iput v3, v0, LI0/l;->d:I

    move-wide/from16 v3, p7

    .line 4
    iput-wide v3, v0, LI0/l;->h:J

    move/from16 v3, p6

    .line 5
    iput-boolean v3, v0, LI0/l;->g:Z

    move/from16 v3, p9

    .line 6
    iput-boolean v3, v0, LI0/l;->i:Z

    move/from16 v3, p10

    .line 7
    iput v3, v0, LI0/l;->j:I

    move-wide/from16 v3, p11

    .line 8
    iput-wide v3, v0, LI0/l;->k:J

    move/from16 v3, p13

    .line 9
    iput v3, v0, LI0/l;->l:I

    move-wide/from16 v3, p14

    .line 10
    iput-wide v3, v0, LI0/l;->m:J

    move-wide/from16 v3, p16

    .line 11
    iput-wide v3, v0, LI0/l;->n:J

    move/from16 v3, p19

    .line 12
    iput-boolean v3, v0, LI0/l;->o:Z

    move/from16 v3, p20

    .line 13
    iput-boolean v3, v0, LI0/l;->p:Z

    move-object/from16 v3, p21

    .line 14
    iput-object v3, v0, LI0/l;->q:Lm0/n;

    .line 15
    invoke-static/range {p22 .. p22}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    move-result-object v3

    iput-object v3, v0, LI0/l;->r:Lz4/H;

    .line 16
    invoke-static/range {p23 .. p23}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    move-result-object v3

    iput-object v3, v0, LI0/l;->s:Lz4/H;

    .line 17
    invoke-static/range {p25 .. p25}, Lz4/J;->b(Ljava/util/Map;)Lz4/J;

    move-result-object v3

    iput-object v3, v0, LI0/l;->t:Lz4/J;

    .line 18
    invoke-static/range {p26 .. p26}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    move-result-object v3

    iput-object v3, v0, LI0/l;->w:Lz4/H;

    .line 19
    invoke-interface/range {p23 .. p23}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    .line 20
    invoke-static/range {p23 .. p23}, Ly4/k;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LI0/g;

    .line 21
    iget-wide v6, v3, LI0/j;->K:J

    iget-wide v8, v3, LI0/j;->I:J

    add-long/2addr v6, v8

    iput-wide v6, v0, LI0/l;->u:J

    goto :goto_0

    .line 22
    :cond_0
    invoke-interface/range {p22 .. p22}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 23
    invoke-static/range {p22 .. p22}, Ly4/k;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LI0/i;

    .line 24
    iget-wide v6, v3, LI0/j;->K:J

    iget-wide v8, v3, LI0/j;->I:J

    add-long/2addr v6, v8

    iput-wide v6, v0, LI0/l;->u:J

    goto :goto_0

    .line 25
    :cond_1
    iput-wide v4, v0, LI0/l;->u:J

    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v6

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v3, v1, v4

    if-ltz v3, :cond_3

    .line 26
    iget-wide v6, v0, LI0/l;->u:J

    invoke-static {v6, v7, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_1

    .line 27
    :cond_3
    iget-wide v6, v0, LI0/l;->u:J

    add-long/2addr v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_1
    iput-wide v6, v0, LI0/l;->e:J

    cmp-long v3, v1, v4

    if-ltz v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 28
    :goto_2
    iput-boolean v1, v0, LI0/l;->f:Z

    move-object/from16 v1, p24

    .line 29
    iput-object v1, v0, LI0/l;->v:LI0/k;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p0
.end method
