.class public final LO0/Y;
.super Lm0/f0;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/Object;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Ljava/lang/Object;

.field public final l:Lm0/I;

.field public final m:Lm0/D;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LO0/Y;->n:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lm0/x;

    .line 9
    .line 10
    invoke-direct {v0}, Lm0/x;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "SinglePeriodTimeline"

    .line 14
    .line 15
    iput-object v1, v0, Lm0/x;->a:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 18
    .line 19
    iput-object v1, v0, Lm0/x;->b:Landroid/net/Uri;

    .line 20
    .line 21
    invoke-virtual {v0}, Lm0/x;->a()Lm0/I;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(JJJJJJZZZLF/i;Lm0/I;Lm0/D;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-wide v1, p1

    .line 6
    iput-wide v1, v0, LO0/Y;->b:J

    .line 7
    .line 8
    move-wide v1, p3

    .line 9
    iput-wide v1, v0, LO0/Y;->c:J

    .line 10
    .line 11
    move-wide v1, p5

    .line 12
    iput-wide v1, v0, LO0/Y;->d:J

    .line 13
    .line 14
    move-wide v1, p7

    .line 15
    iput-wide v1, v0, LO0/Y;->e:J

    .line 16
    .line 17
    move-wide v1, p9

    .line 18
    iput-wide v1, v0, LO0/Y;->f:J

    .line 19
    .line 20
    move-wide v1, p11

    .line 21
    iput-wide v1, v0, LO0/Y;->g:J

    .line 22
    .line 23
    move/from16 v1, p13

    .line 24
    .line 25
    iput-boolean v1, v0, LO0/Y;->h:Z

    .line 26
    .line 27
    move/from16 v1, p14

    .line 28
    .line 29
    iput-boolean v1, v0, LO0/Y;->i:Z

    .line 30
    .line 31
    move/from16 v1, p15

    .line 32
    .line 33
    iput-boolean v1, v0, LO0/Y;->j:Z

    .line 34
    .line 35
    move-object/from16 v1, p16

    .line 36
    .line 37
    iput-object v1, v0, LO0/Y;->k:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-object/from16 v1, p17

    .line 43
    .line 44
    iput-object v1, v0, LO0/Y;->l:Lm0/I;

    .line 45
    .line 46
    move-object/from16 v1, p18

    .line 47
    .line 48
    iput-object v1, v0, LO0/Y;->m:Lm0/D;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, LO0/Y;->n:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, -0x1

    .line 12
    :goto_0
    return p1
.end method

.method public final g(ILm0/d0;Z)Lm0/d0;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/H1;->e(II)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    sget-object p3, LO0/Y;->n:Ljava/lang/Object;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p3, p1

    .line 12
    :goto_0
    iget-wide v0, p0, LO0/Y;->f:J

    .line 13
    .line 14
    neg-long v0, v0

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v2, Lm0/c;->c:Lm0/c;

    .line 19
    .line 20
    iput-object p1, p2, Lm0/d0;->a:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p3, p2, Lm0/d0;->b:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput p1, p2, Lm0/d0;->c:I

    .line 26
    .line 27
    iget-wide v3, p0, LO0/Y;->d:J

    .line 28
    .line 29
    iput-wide v3, p2, Lm0/d0;->d:J

    .line 30
    .line 31
    iput-wide v0, p2, Lm0/d0;->e:J

    .line 32
    .line 33
    iput-object v2, p2, Lm0/d0;->g:Lm0/c;

    .line 34
    .line 35
    iput-boolean p1, p2, Lm0/d0;->f:Z

    .line 36
    .line 37
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
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/H1;->e(II)V

    .line 3
    .line 4
    .line 5
    sget-object p1, LO0/Y;->n:Ljava/lang/Object;

    .line 6
    .line 7
    return-object p1
.end method

.method public final n(ILm0/e0;J)Lm0/e0;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    move/from16 v2, p1

    .line 5
    .line 6
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/H1;->e(II)V

    .line 7
    .line 8
    .line 9
    iget-wide v1, v0, LO0/Y;->g:J

    .line 10
    .line 11
    iget-boolean v13, v0, LO0/Y;->i:Z

    .line 12
    .line 13
    if-eqz v13, :cond_1

    .line 14
    .line 15
    iget-boolean v3, v0, LO0/Y;->j:Z

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    cmp-long v5, p3, v3

    .line 22
    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    iget-wide v5, v0, LO0/Y;->e:J

    .line 31
    .line 32
    cmp-long v7, v5, v3

    .line 33
    .line 34
    if-nez v7, :cond_0

    .line 35
    .line 36
    :goto_0
    move-wide v15, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    add-long v1, v1, p3

    .line 39
    .line 40
    cmp-long v7, v1, v5

    .line 41
    .line 42
    if-lez v7, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-wide v15, v1

    .line 46
    :goto_1
    sget-object v1, Lm0/e0;->q:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object v14, v0, LO0/Y;->m:Lm0/D;

    .line 49
    .line 50
    iget-wide v1, v0, LO0/Y;->e:J

    .line 51
    .line 52
    move-wide/from16 v17, v1

    .line 53
    .line 54
    iget-object v4, v0, LO0/Y;->l:Lm0/I;

    .line 55
    .line 56
    iget-object v5, v0, LO0/Y;->k:Ljava/lang/Object;

    .line 57
    .line 58
    iget-wide v6, v0, LO0/Y;->b:J

    .line 59
    .line 60
    iget-wide v8, v0, LO0/Y;->c:J

    .line 61
    .line 62
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    iget-boolean v12, v0, LO0/Y;->h:Z

    .line 68
    .line 69
    const/16 v19, 0x0

    .line 70
    .line 71
    iget-wide v1, v0, LO0/Y;->f:J

    .line 72
    .line 73
    move-wide/from16 v20, v1

    .line 74
    .line 75
    move-object/from16 v3, p2

    .line 76
    .line 77
    invoke-virtual/range {v3 .. v21}, Lm0/e0;->b(Lm0/I;Ljava/lang/Object;JJJZZLm0/D;JJIJ)V

    .line 78
    .line 79
    .line 80
    return-object p2
.end method

.method public final p()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
