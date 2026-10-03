.class public final Lcom/google/android/gms/internal/ads/RK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final t:Lcom/google/android/gms/internal/ads/wN;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/Ie;

.field public final b:Lcom/google/android/gms/internal/ads/wN;

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:Lcom/google/android/gms/internal/ads/jK;

.field public final g:Z

.field public final h:Lcom/google/android/gms/internal/ads/bO;

.field public final i:Lcom/google/android/gms/internal/ads/yO;

.field public final j:Ljava/util/List;

.field public final k:Lcom/google/android/gms/internal/ads/wN;

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:Lcom/google/android/gms/internal/ads/ob;

.field public volatile p:J

.field public volatile q:J

.field public volatile r:J

.field public volatile s:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/wN;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/wN;-><init>(Ljava/lang/Object;J)V

    sput-object v0, Lcom/google/android/gms/internal/ads/RK;->t:Lcom/google/android/gms/internal/ads/wN;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;JJILcom/google/android/gms/internal/ads/jK;ZLcom/google/android/gms/internal/ads/bO;Lcom/google/android/gms/internal/ads/yO;Ljava/util/List;Lcom/google/android/gms/internal/ads/wN;ZIILcom/google/android/gms/internal/ads/ob;JJJJ)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 10
    .line 11
    move-wide v1, p3

    .line 12
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/RK;->c:J

    .line 13
    .line 14
    move-wide v1, p5

    .line 15
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/RK;->d:J

    .line 16
    .line 17
    move v1, p7

    .line 18
    iput v1, v0, Lcom/google/android/gms/internal/ads/RK;->e:I

    .line 19
    .line 20
    move-object v1, p8

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/RK;->f:Lcom/google/android/gms/internal/ads/jK;

    .line 22
    .line 23
    move v1, p9

    .line 24
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/RK;->g:Z

    .line 25
    .line 26
    move-object v1, p10

    .line 27
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/RK;->h:Lcom/google/android/gms/internal/ads/bO;

    .line 28
    .line 29
    move-object v1, p11

    .line 30
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/RK;->i:Lcom/google/android/gms/internal/ads/yO;

    .line 31
    .line 32
    move-object v1, p12

    .line 33
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/RK;->j:Ljava/util/List;

    .line 34
    .line 35
    move-object/from16 v1, p13

    .line 36
    .line 37
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/RK;->k:Lcom/google/android/gms/internal/ads/wN;

    .line 38
    .line 39
    move/from16 v1, p14

    .line 40
    .line 41
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/RK;->l:Z

    .line 42
    .line 43
    move/from16 v1, p15

    .line 44
    .line 45
    iput v1, v0, Lcom/google/android/gms/internal/ads/RK;->m:I

    .line 46
    .line 47
    move/from16 v1, p16

    .line 48
    .line 49
    iput v1, v0, Lcom/google/android/gms/internal/ads/RK;->n:I

    .line 50
    .line 51
    move-object/from16 v1, p17

    .line 52
    .line 53
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/RK;->o:Lcom/google/android/gms/internal/ads/ob;

    .line 54
    .line 55
    move-wide/from16 v1, p18

    .line 56
    .line 57
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/RK;->p:J

    .line 58
    .line 59
    move-wide/from16 v1, p20

    .line 60
    .line 61
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/RK;->q:J

    .line 62
    .line 63
    move-wide/from16 v1, p22

    .line 64
    .line 65
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/RK;->r:J

    .line 66
    .line 67
    move-wide/from16 v1, p24

    .line 68
    .line 69
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/RK;->s:J

    .line 70
    .line 71
    return-void
.end method

.method public static g(Lcom/google/android/gms/internal/ads/yO;)Lcom/google/android/gms/internal/ads/RK;
    .locals 27

    .line 1
    new-instance v26, Lcom/google/android/gms/internal/ads/RK;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/Ie;->a:Lcom/google/android/gms/internal/ads/Rd;

    .line 4
    .line 5
    sget-object v13, Lcom/google/android/gms/internal/ads/RK;->t:Lcom/google/android/gms/internal/ads/wN;

    .line 6
    .line 7
    sget-object v10, Lcom/google/android/gms/internal/ads/bO;->d:Lcom/google/android/gms/internal/ads/bO;

    .line 8
    .line 9
    sget-object v12, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 10
    .line 11
    sget-object v17, Lcom/google/android/gms/internal/ads/ob;->d:Lcom/google/android/gms/internal/ads/ob;

    .line 12
    .line 13
    const-wide/16 v20, 0x0

    .line 14
    .line 15
    const-wide/16 v22, 0x0

    .line 16
    .line 17
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    const/4 v7, 0x1

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v14, 0x0

    .line 28
    const/4 v15, 0x1

    .line 29
    const/16 v16, 0x0

    .line 30
    .line 31
    const-wide/16 v18, 0x0

    .line 32
    .line 33
    const-wide/16 v24, 0x0

    .line 34
    .line 35
    move-object/from16 v0, v26

    .line 36
    .line 37
    move-object v2, v13

    .line 38
    move-object/from16 v11, p0

    .line 39
    .line 40
    invoke-direct/range {v0 .. v25}, Lcom/google/android/gms/internal/ads/RK;-><init>(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;JJILcom/google/android/gms/internal/ads/jK;ZLcom/google/android/gms/internal/ads/bO;Lcom/google/android/gms/internal/ads/yO;Ljava/util/List;Lcom/google/android/gms/internal/ads/wN;ZIILcom/google/android/gms/internal/ads/ob;JJJJ)V

    .line 41
    .line 42
    .line 43
    return-object v26
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/RK;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    new-instance v27, Lcom/google/android/gms/internal/ads/RK;

    move-object/from16 v1, v27

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/RK;->l:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/RK;->m:I

    move/from16 v16, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/RK;->n:I

    move/from16 v17, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/RK;->o:Lcom/google/android/gms/internal/ads/ob;

    move-object/from16 v18, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/RK;->p:J

    move-wide/from16 v19, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/RK;->q:J

    move-wide/from16 v21, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/RK;->r:J

    move-wide/from16 v23, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/RK;->s:J

    move-wide/from16 v25, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/RK;->c:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/RK;->d:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/RK;->e:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/RK;->f:Lcom/google/android/gms/internal/ads/jK;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/RK;->g:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/RK;->h:Lcom/google/android/gms/internal/ads/bO;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/RK;->i:Lcom/google/android/gms/internal/ads/yO;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/RK;->j:Ljava/util/List;

    invoke-direct/range {v1 .. v26}, Lcom/google/android/gms/internal/ads/RK;-><init>(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;JJILcom/google/android/gms/internal/ads/jK;ZLcom/google/android/gms/internal/ads/bO;Lcom/google/android/gms/internal/ads/yO;Ljava/util/List;Lcom/google/android/gms/internal/ads/wN;ZIILcom/google/android/gms/internal/ads/ob;JJJJ)V

    return-object v27
.end method

.method public final b(Lcom/google/android/gms/internal/ads/wN;JJJJLcom/google/android/gms/internal/ads/bO;Lcom/google/android/gms/internal/ads/yO;Ljava/util/List;)Lcom/google/android/gms/internal/ads/RK;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-wide/from16 v23, p2

    .line 6
    .line 7
    move-wide/from16 v4, p4

    .line 8
    .line 9
    move-wide/from16 v6, p6

    .line 10
    .line 11
    move-wide/from16 v21, p8

    .line 12
    .line 13
    move-object/from16 v11, p10

    .line 14
    .line 15
    move-object/from16 v12, p11

    .line 16
    .line 17
    move-object/from16 v13, p12

    .line 18
    .line 19
    new-instance v27, Lcom/google/android/gms/internal/ads/RK;

    .line 20
    .line 21
    move-object/from16 v1, v27

    .line 22
    .line 23
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/RK;->k:Lcom/google/android/gms/internal/ads/wN;

    .line 24
    .line 25
    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/RK;->l:Z

    .line 26
    .line 27
    iget v2, v0, Lcom/google/android/gms/internal/ads/RK;->m:I

    .line 28
    .line 29
    move/from16 v16, v2

    .line 30
    .line 31
    iget v2, v0, Lcom/google/android/gms/internal/ads/RK;->n:I

    .line 32
    .line 33
    move/from16 v17, v2

    .line 34
    .line 35
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/RK;->o:Lcom/google/android/gms/internal/ads/ob;

    .line 36
    .line 37
    move-object/from16 v18, v2

    .line 38
    .line 39
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/RK;->p:J

    .line 40
    .line 41
    move-wide/from16 v19, v8

    .line 42
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v25

    .line 47
    iget v8, v0, Lcom/google/android/gms/internal/ads/RK;->e:I

    .line 48
    .line 49
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/RK;->f:Lcom/google/android/gms/internal/ads/jK;

    .line 50
    .line 51
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/RK;->g:Z

    .line 52
    .line 53
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 54
    .line 55
    invoke-direct/range {v1 .. v26}, Lcom/google/android/gms/internal/ads/RK;-><init>(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;JJILcom/google/android/gms/internal/ads/jK;ZLcom/google/android/gms/internal/ads/bO;Lcom/google/android/gms/internal/ads/yO;Ljava/util/List;Lcom/google/android/gms/internal/ads/wN;ZIILcom/google/android/gms/internal/ads/ob;JJJJ)V

    .line 56
    .line 57
    .line 58
    return-object v27
.end method

.method public final c(ZII)Lcom/google/android/gms/internal/ads/RK;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    new-instance v27, Lcom/google/android/gms/internal/ads/RK;

    move-object/from16 v1, v27

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/RK;->o:Lcom/google/android/gms/internal/ads/ob;

    move-object/from16 v18, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/RK;->p:J

    move-wide/from16 v19, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/RK;->q:J

    move-wide/from16 v21, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/RK;->r:J

    move-wide/from16 v23, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/RK;->s:J

    move-wide/from16 v25, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/RK;->c:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/RK;->d:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/RK;->e:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/RK;->f:Lcom/google/android/gms/internal/ads/jK;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/RK;->g:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/RK;->h:Lcom/google/android/gms/internal/ads/bO;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/RK;->i:Lcom/google/android/gms/internal/ads/yO;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/RK;->j:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/RK;->k:Lcom/google/android/gms/internal/ads/wN;

    invoke-direct/range {v1 .. v26}, Lcom/google/android/gms/internal/ads/RK;-><init>(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;JJILcom/google/android/gms/internal/ads/jK;ZLcom/google/android/gms/internal/ads/bO;Lcom/google/android/gms/internal/ads/yO;Ljava/util/List;Lcom/google/android/gms/internal/ads/wN;ZIILcom/google/android/gms/internal/ads/ob;JJJJ)V

    return-object v27
.end method

.method public final d(Lcom/google/android/gms/internal/ads/jK;)Lcom/google/android/gms/internal/ads/RK;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    new-instance v27, Lcom/google/android/gms/internal/ads/RK;

    move-object/from16 v1, v27

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/RK;->g:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/RK;->h:Lcom/google/android/gms/internal/ads/bO;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/RK;->i:Lcom/google/android/gms/internal/ads/yO;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/RK;->j:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/RK;->k:Lcom/google/android/gms/internal/ads/wN;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/RK;->l:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/RK;->m:I

    move/from16 v16, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/RK;->n:I

    move/from16 v17, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/RK;->o:Lcom/google/android/gms/internal/ads/ob;

    move-object/from16 v18, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/RK;->p:J

    move-wide/from16 v19, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/RK;->q:J

    move-wide/from16 v21, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/RK;->r:J

    move-wide/from16 v23, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/RK;->s:J

    move-wide/from16 v25, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/RK;->c:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/RK;->d:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/RK;->e:I

    invoke-direct/range {v1 .. v26}, Lcom/google/android/gms/internal/ads/RK;-><init>(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;JJILcom/google/android/gms/internal/ads/jK;ZLcom/google/android/gms/internal/ads/bO;Lcom/google/android/gms/internal/ads/yO;Ljava/util/List;Lcom/google/android/gms/internal/ads/wN;ZIILcom/google/android/gms/internal/ads/ob;JJJJ)V

    return-object v27
.end method

.method public final e(I)Lcom/google/android/gms/internal/ads/RK;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    move/from16 v8, p1

    new-instance v27, Lcom/google/android/gms/internal/ads/RK;

    move-object/from16 v1, v27

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/RK;->f:Lcom/google/android/gms/internal/ads/jK;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/RK;->g:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/RK;->h:Lcom/google/android/gms/internal/ads/bO;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/RK;->i:Lcom/google/android/gms/internal/ads/yO;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/RK;->j:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/RK;->k:Lcom/google/android/gms/internal/ads/wN;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/RK;->l:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/RK;->m:I

    move/from16 v16, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/RK;->n:I

    move/from16 v17, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/RK;->o:Lcom/google/android/gms/internal/ads/ob;

    move-object/from16 v18, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/RK;->p:J

    move-wide/from16 v19, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/RK;->q:J

    move-wide/from16 v21, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/RK;->r:J

    move-wide/from16 v23, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/RK;->s:J

    move-wide/from16 v25, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/RK;->c:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/RK;->d:J

    invoke-direct/range {v1 .. v26}, Lcom/google/android/gms/internal/ads/RK;-><init>(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;JJILcom/google/android/gms/internal/ads/jK;ZLcom/google/android/gms/internal/ads/bO;Lcom/google/android/gms/internal/ads/yO;Ljava/util/List;Lcom/google/android/gms/internal/ads/wN;ZIILcom/google/android/gms/internal/ads/ob;JJJJ)V

    return-object v27
.end method

.method public final f(Lcom/google/android/gms/internal/ads/Ie;)Lcom/google/android/gms/internal/ads/RK;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    new-instance v27, Lcom/google/android/gms/internal/ads/RK;

    move-object/from16 v1, v27

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/RK;->c:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/RK;->d:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/RK;->e:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/RK;->f:Lcom/google/android/gms/internal/ads/jK;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/RK;->g:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/RK;->h:Lcom/google/android/gms/internal/ads/bO;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/RK;->i:Lcom/google/android/gms/internal/ads/yO;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/RK;->j:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/RK;->k:Lcom/google/android/gms/internal/ads/wN;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/RK;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/RK;->m:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/RK;->n:I

    move/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/RK;->o:Lcom/google/android/gms/internal/ads/ob;

    move-object/from16 v18, v1

    move-object/from16 v28, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/RK;->p:J

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/RK;->q:J

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/RK;->r:J

    move-wide/from16 v23, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/RK;->s:J

    move-wide/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct/range {v1 .. v26}, Lcom/google/android/gms/internal/ads/RK;-><init>(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;JJILcom/google/android/gms/internal/ads/jK;ZLcom/google/android/gms/internal/ads/bO;Lcom/google/android/gms/internal/ads/yO;Ljava/util/List;Lcom/google/android/gms/internal/ads/wN;ZIILcom/google/android/gms/internal/ads/ob;JJJJ)V

    return-object v27
.end method

.method public final h()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/RK;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/RK;->l:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/RK;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
