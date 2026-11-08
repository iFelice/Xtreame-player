.class public final LE3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH3/o;


# instance fields
.field public final synthetic a:LE3/r;


# direct methods
.method public constructor <init>(LE3/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LE3/q;->a:LE3/r;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JJJ)V
    .locals 12

    .line 1
    move-object v1, p0

    .line 2
    iget-object v2, v1, LE3/q;->a:LE3/r;

    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/16 v4, 0x837

    .line 8
    .line 9
    invoke-direct {v0, v4, v3, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;LJ3/b;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, LE3/o;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-direct {v3, v0, v4}, LE3/o;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->L0(Lcom/google/android/gms/common/api/o;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    sget-object v3, LE3/j;->k:LH3/b;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    new-array v4, v4, [Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v5, v3, LH3/b;->a:Ljava/lang/String;

    .line 29
    .line 30
    const-string v6, "Result already set when calling onRequestReplaced"

    .line 31
    .line 32
    invoke-virtual {v3, v6, v4}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v0, v2, LE3/r;->Y:LE3/j;

    .line 40
    .line 41
    iget-object v0, v0, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    move-object v3, v2

    .line 58
    check-cast v3, LE3/h;

    .line 59
    .line 60
    const/16 v7, 0x837

    .line 61
    .line 62
    move-object v4, p1

    .line 63
    move-wide v5, p2

    .line 64
    move-wide/from16 v8, p4

    .line 65
    .line 66
    move-wide/from16 v10, p6

    .line 67
    .line 68
    invoke-virtual/range {v3 .. v11}, LE3/h;->a(Ljava/lang/String;JIJJ)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    return-void
.end method

.method public final b(IJJJLH3/m;Ljava/lang/String;)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    iget-object v2, v1, LE3/q;->a:LE3/r;

    .line 3
    .line 4
    :try_start_0
    new-instance v0, LE3/s;

    .line 5
    .line 6
    new-instance v3, Lcom/google/android/gms/common/api/Status;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    move/from16 v14, p1

    .line 10
    .line 11
    :try_start_1
    invoke-direct {v3, v14, v4, v4, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;LJ3/b;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    .line 13
    .line 14
    move-object/from16 v4, p8

    .line 15
    .line 16
    instance-of v4, v4, LH3/m;

    .line 17
    .line 18
    :try_start_2
    invoke-direct {v0, v3}, LE3/s;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->L0(Lcom/google/android/gms/common/api/o;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catch_0
    move-exception v0

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v0

    .line 28
    move/from16 v14, p1

    .line 29
    .line 30
    :goto_0
    sget-object v3, LE3/j;->k:LH3/b;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    new-array v4, v4, [Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v5, v3, LH3/b;->a:Ljava/lang/String;

    .line 36
    .line 37
    const-string v6, "Result already set when calling onRequestCompleted"

    .line 38
    .line 39
    invoke-virtual {v3, v6, v4}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :goto_1
    iget-object v0, v2, LE3/r;->Y:LE3/j;

    .line 47
    .line 48
    iget-object v0, v0, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    move-object v5, v2

    .line 65
    check-cast v5, LE3/h;

    .line 66
    .line 67
    move-object/from16 v6, p9

    .line 68
    .line 69
    move-wide/from16 v7, p2

    .line 70
    .line 71
    move/from16 v9, p1

    .line 72
    .line 73
    move-wide/from16 v10, p4

    .line 74
    .line 75
    move-wide/from16 v12, p6

    .line 76
    .line 77
    invoke-virtual/range {v5 .. v13}, LE3/h;->a(Ljava/lang/String;JIJJ)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_0
    return-void
.end method
