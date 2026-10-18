.class public final LB0/w;
.super Lm0/Q;
.source "SourceFile"


# instance fields
.field public final I:I

.field public final J:Ljava/lang/String;

.field public final K:I

.field public final L:Lm0/t;

.field public final M:I

.field public final N:LO0/y;

.field public final O:Z


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;I)V
    .locals 10

    .line 1
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 2
    invoke-direct/range {v0 .. v9}, LB0/w;-><init>(ILjava/lang/Throwable;ILjava/lang/String;ILm0/t;ILO0/y;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;ILjava/lang/String;ILm0/t;ILO0/y;Z)V
    .locals 13

    .line 3
    move v4, p1

    move/from16 v8, p7

    if-eqz v4, :cond_7

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq v4, v1, :cond_1

    if-eq v4, v0, :cond_0

    .line 4
    const-string v0, "Unexpected runtime error"

    :goto_0
    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    goto :goto_2

    .line 5
    :cond_0
    const-string v0, "Remote error"

    goto :goto_0

    .line 6
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error, index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", format_supported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    sget-object v3, Lp0/M;->a:Ljava/lang/String;

    if-eqz v8, :cond_6

    if-eq v8, v1, :cond_5

    const/4 v1, 0x2

    if-eq v8, v1, :cond_4

    if-eq v8, v0, :cond_3

    const/4 v0, 0x4

    if-ne v8, v0, :cond_2

    .line 8
    const-string v0, "YES"

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 10
    :cond_3
    const-string v0, "NO_EXCEEDS_CAPABILITIES"

    goto :goto_1

    .line 11
    :cond_4
    const-string v0, "NO_UNSUPPORTED_DRM"

    goto :goto_1

    .line 12
    :cond_5
    const-string v0, "NO_UNSUPPORTED_TYPE"

    goto :goto_1

    .line 13
    :cond_6
    const-string v0, "NO"

    .line 14
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    .line 15
    const-string v0, "Source error"

    :goto_2
    const/4 v1, 0x0

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 17
    const-string v1, ": null"

    .line 18
    invoke-static {v0, v1}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    move-object v1, v0

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v0, p0

    move-object v2, p2

    move/from16 v3, p3

    move v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v12, p9

    .line 20
    invoke-direct/range {v0 .. v12}, LB0/w;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILm0/t;ILO0/y;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILm0/t;ILO0/y;JZ)V
    .locals 9

    .line 21
    move-object v6, p0

    move v7, p4

    move/from16 v8, p12

    .line 22
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p10

    invoke-direct/range {v0 .. v5}, Lm0/Q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v8, :cond_1

    if-ne v7, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 23
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    if-nez p2, :cond_2

    const/4 v2, 0x3

    if-ne v7, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 24
    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 25
    iput v7, v6, LB0/w;->I:I

    move-object v0, p5

    .line 26
    iput-object v0, v6, LB0/w;->J:Ljava/lang/String;

    move v0, p6

    .line 27
    iput v0, v6, LB0/w;->K:I

    move-object/from16 v0, p7

    .line 28
    iput-object v0, v6, LB0/w;->L:Lm0/t;

    move/from16 v0, p8

    .line 29
    iput v0, v6, LB0/w;->M:I

    move-object/from16 v0, p9

    .line 30
    iput-object v0, v6, LB0/w;->N:LO0/y;

    .line 31
    iput-boolean v8, v6, LB0/w;->O:Z

    return-void
.end method


# virtual methods
.method public final a(LO0/y;)LB0/w;
    .locals 14

    .line 1
    new-instance v13, LB0/w;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-wide v10, p0, Lm0/Q;->H:J

    .line 14
    .line 15
    iget-boolean v12, p0, LB0/w;->O:Z

    .line 16
    .line 17
    iget v3, p0, Lm0/Q;->G:I

    .line 18
    .line 19
    iget v4, p0, LB0/w;->I:I

    .line 20
    .line 21
    iget-object v5, p0, LB0/w;->J:Ljava/lang/String;

    .line 22
    .line 23
    iget v6, p0, LB0/w;->K:I

    .line 24
    .line 25
    iget-object v7, p0, LB0/w;->L:Lm0/t;

    .line 26
    .line 27
    iget v8, p0, LB0/w;->M:I

    .line 28
    .line 29
    move-object v0, v13

    .line 30
    move-object v9, p1

    .line 31
    invoke-direct/range {v0 .. v12}, LB0/w;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILm0/t;ILO0/y;JZ)V

    .line 32
    .line 33
    .line 34
    return-object v13
.end method
