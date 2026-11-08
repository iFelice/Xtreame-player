.class public final Lm0/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/net/Uri;

.field public final c:LU4/b;

.field public final d:Lm0/A;

.field public final e:Ljava/util/List;

.field public final f:Lz4/d0;

.field public final g:J

.field public final h:Lm0/C;

.field public final i:Lm0/F;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LU4/b;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm0/x;->c:LU4/b;

    .line 10
    .line 11
    new-instance v0, Lm0/A;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lm0/A;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lm0/x;->d:Lm0/A;

    .line 18
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lm0/x;->e:Ljava/util/List;

    .line 24
    .line 25
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 26
    .line 27
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 28
    .line 29
    iput-object v0, p0, Lm0/x;->f:Lz4/d0;

    .line 30
    .line 31
    new-instance v0, Lm0/C;

    .line 32
    .line 33
    invoke-direct {v0}, Lm0/C;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lm0/x;->h:Lm0/C;

    .line 37
    .line 38
    sget-object v0, Lm0/F;->d:Lm0/F;

    .line 39
    .line 40
    iput-object v0, p0, Lm0/x;->i:Lm0/F;

    .line 41
    .line 42
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    iput-wide v0, p0, Lm0/x;->g:J

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final a()Lm0/I;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lm0/x;->d:Lm0/A;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v3, v0, Lm0/x;->b:Landroid/net/Uri;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    new-instance v9, Lm0/E;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v6, v0, Lm0/x;->f:Lz4/d0;

    .line 19
    .line 20
    iget-wide v7, v0, Lm0/x;->g:J

    .line 21
    .line 22
    iget-object v5, v0, Lm0/x;->e:Ljava/util/List;

    .line 23
    .line 24
    move-object v2, v9

    .line 25
    invoke-direct/range {v2 .. v8}, Lm0/E;-><init>(Landroid/net/Uri;Lm0/B;Ljava/util/List;Lz4/d0;J)V

    .line 26
    .line 27
    .line 28
    move-object v13, v9

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v13, v4

    .line 31
    :goto_0
    new-instance v1, Lm0/I;

    .line 32
    .line 33
    iget-object v2, v0, Lm0/x;->a:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    :goto_1
    move-object v11, v2

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    const-string v2, ""

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :goto_2
    iget-object v2, v0, Lm0/x;->c:LU4/b;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v12, Lm0/z;

    .line 48
    .line 49
    invoke-direct {v12, v2}, Lm0/y;-><init>(LU4/b;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, v0, Lm0/x;->h:Lm0/C;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v14, Lm0/D;

    .line 58
    .line 59
    invoke-direct {v14, v2}, Lm0/D;-><init>(Lm0/C;)V

    .line 60
    .line 61
    .line 62
    sget-object v15, Lm0/L;->I:Lm0/L;

    .line 63
    .line 64
    iget-object v2, v0, Lm0/x;->i:Lm0/F;

    .line 65
    .line 66
    move-object v10, v1

    .line 67
    move-object/from16 v16, v2

    .line 68
    .line 69
    invoke-direct/range {v10 .. v16}, Lm0/I;-><init>(Ljava/lang/String;Lm0/z;Lm0/E;Lm0/D;Lm0/L;Lm0/F;)V

    .line 70
    .line 71
    .line 72
    return-object v1
.end method
