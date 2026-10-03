.class public final LO0/s;
.super Lm0/f0;
.source "SourceFile"


# instance fields
.field public final b:Lm0/I;


# direct methods
.method public constructor <init>(Lm0/I;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LO0/s;->b:Lm0/I;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, LO0/r;->e:Ljava/lang/Object;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, -0x1

    .line 8
    :goto_0
    return p1
.end method

.method public final g(ILm0/d0;Z)Lm0/d0;
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v1, v0

    .line 11
    :goto_0
    if-eqz p3, :cond_1

    .line 12
    .line 13
    sget-object v0, LO0/r;->e:Ljava/lang/Object;

    .line 14
    .line 15
    :cond_1
    sget-object p3, Lm0/c;->c:Lm0/c;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object p3, Lm0/c;->c:Lm0/c;

    .line 21
    .line 22
    iput-object v1, p2, Lm0/d0;->a:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object v0, p2, Lm0/d0;->b:Ljava/lang/Object;

    .line 25
    .line 26
    iput p1, p2, Lm0/d0;->c:I

    .line 27
    .line 28
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    iput-wide v0, p2, Lm0/d0;->d:J

    .line 34
    .line 35
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    iput-wide v0, p2, Lm0/d0;->e:J

    .line 38
    .line 39
    iput-object p3, p2, Lm0/d0;->g:Lm0/c;

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p2, Lm0/d0;->f:Z

    .line 43
    .line 44
    return-object p2
.end method

.method public final i()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final m(I)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p1, LO0/r;->e:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method public final n(ILm0/e0;J)Lm0/e0;
    .locals 19

    .line 1
    move-object/from16 v11, p2

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    sget-object v1, Lm0/e0;->q:Ljava/lang/Object;

    .line 6
    .line 7
    const-wide/16 v12, 0x0

    .line 8
    .line 9
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    move-object/from16 v10, p0

    .line 15
    .line 16
    iget-object v1, v10, LO0/s;->b:Lm0/I;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    const/4 v9, 0x0

    .line 35
    const/16 v16, 0x1

    .line 36
    .line 37
    move/from16 v10, v16

    .line 38
    .line 39
    const/16 v16, 0x0

    .line 40
    .line 41
    move-object/from16 v11, v16

    .line 42
    .line 43
    const/16 v16, 0x0

    .line 44
    .line 45
    const-wide/16 v17, 0x0

    .line 46
    .line 47
    invoke-virtual/range {v0 .. v18}, Lm0/e0;->b(Lm0/I;Ljava/lang/Object;JJJZZLm0/D;JJIJ)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    move-object/from16 v1, p2

    .line 52
    .line 53
    iput-boolean v0, v1, Lm0/e0;->k:Z

    .line 54
    .line 55
    return-object v1
.end method

.method public final p()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
