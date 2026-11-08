.class public final Lc4/b;
.super Lc4/c;
.source "SourceFile"


# instance fields
.field public final synthetic g:I

.field public final synthetic h:Lc4/d;

.field public final i:Lcom/google/android/gms/internal/measurement/s2;


# direct methods
.method public synthetic constructor <init>(Lc4/d;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/s2;I)V
    .locals 0

    .line 1
    iput p5, p0, Lc4/b;->g:I

    .line 2
    .line 3
    iput-object p1, p0, Lc4/b;->h:Lc4/d;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lc4/c;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    iput-object p4, p0, Lc4/b;->i:Lcom/google/android/gms/internal/measurement/s2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/b1;JLc4/s;Z)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/H3;->b()V

    iget-object v1, v0, Lc4/b;->h:Lc4/d;

    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    check-cast v2, Lc4/l0;

    .line 3
    iget-object v3, v2, Lc4/l0;->M:Lc4/h;

    .line 4
    sget-object v4, Lc4/E;->F0:Lc4/D;

    .line 5
    iget-object v5, v0, Lc4/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    move-result v3

    iget-object v4, v0, Lc4/b;->i:Lcom/google/android/gms/internal/measurement/s2;

    check-cast v4, Lcom/google/android/gms/internal/measurement/q0;

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->B()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v6, p6

    iget-wide v6, v6, Lc4/s;->e:J

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p4

    .line 7
    :goto_0
    iget-object v8, v2, Lc4/l0;->O:Lc4/T;

    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 8
    invoke-virtual {v8}, Lc4/T;->x()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    const/4 v11, 0x0

    iget-object v13, v8, Lc4/T;->T:Lc4/Q;

    iget v14, v0, Lc4/c;->b:I

    iget-object v2, v2, Lc4/l0;->S:Lc4/O;

    if-eqz v9, :cond_6

    .line 9
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 10
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->D()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->r()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v12, v16

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 12
    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->v()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v15, "Evaluating filter. audience, filter, event"

    .line 13
    invoke-virtual {v13, v9, v12, v10, v15}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 15
    iget-object v1, v1, Lc4/q1;->H:Lc4/A1;

    iget-object v1, v1, Lc4/A1;->M:Lc4/E1;

    .line 16
    invoke-static {v1}, Lc4/A1;->I(Lc4/u1;)V

    .line 17
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\nevent_filter {\n"

    .line 18
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->D()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->r()I

    move-result v10

    .line 19
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "filter_id"

    invoke-static {v9, v11, v12, v10}, Lc4/E1;->F(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v10, v1, Lc1/d;->G:Ljava/lang/Object;

    check-cast v10, Lc4/l0;

    .line 20
    iget-object v10, v10, Lc4/l0;->S:Lc4/O;

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->v()Ljava/lang/String;

    move-result-object v12

    .line 22
    invoke-virtual {v10, v12}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "event_name"

    .line 23
    invoke-static {v9, v11, v12, v10}, Lc4/E1;->F(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->z()Z

    move-result v10

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->A()Z

    move-result v12

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->B()Z

    move-result v15

    .line 24
    invoke-static {v10, v12, v15}, Lc4/E1;->C(ZZZ)Ljava/lang/String;

    move-result-object v10

    .line 25
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "filter_type"

    .line 26
    invoke-static {v9, v11, v12, v10}, Lc4/E1;->F(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->C()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->u()Lcom/google/android/gms/internal/measurement/v0;

    move-result-object v10

    const-string v12, "event_count_filter"

    const/4 v15, 0x1

    invoke-static {v9, v15, v12, v10}, Lc4/E1;->G(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/v0;)V

    .line 28
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->q()I

    move-result v10

    if-lez v10, :cond_5

    const-string v10, "  filters {\n"

    .line 29
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->w()Ljava/util/List;

    move-result-object v10

    .line 30
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/s0;

    const/4 v15, 0x2

    .line 31
    invoke-virtual {v1, v9, v15, v12}, Lc4/E1;->z(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/s0;)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    .line 32
    invoke-static {v1, v9}, Lc4/E1;->A(ILjava/lang/StringBuilder;)V

    const-string v1, "}\n}\n"

    .line 33
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    const-string v9, "Filter definition"

    invoke-virtual {v13, v1, v9}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->D()Z

    move-result v1

    iget-object v9, v8, Lc4/T;->O:Lc4/Q;

    if-eqz v1, :cond_32

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->r()I

    move-result v1

    const/16 v10, 0x100

    if-le v1, v10, :cond_7

    goto/16 :goto_17

    .line 36
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->z()Z

    move-result v1

    .line 37
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->A()Z

    move-result v5

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->B()Z

    move-result v10

    if-nez v1, :cond_8

    if-nez v5, :cond_8

    if-eqz v10, :cond_9

    :cond_8
    const/4 v15, 0x1

    goto :goto_3

    :cond_9
    const/4 v15, 0x0

    :goto_3
    if-eqz p7, :cond_b

    if-nez v15, :cond_b

    .line 39
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 40
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 41
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->D()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->r()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_4

    :cond_a
    const/4 v12, 0x0

    :goto_4
    const-string v2, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 42
    invoke-virtual {v13, v1, v12, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/b1;->w()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->C()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 44
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->u()Lcom/google/android/gms/internal/measurement/v0;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lc4/c;->c(JLcom/google/android/gms/internal/measurement/v0;)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v5, :cond_c

    :goto_5
    const/4 v12, 0x0

    goto/16 :goto_11

    .line 45
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_d

    .line 46
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_11

    :cond_d
    new-instance v5, Ljava/util/HashSet;

    .line 47
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 48
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->w()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/s0;

    .line 49
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/s0;->t()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 50
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 51
    invoke-virtual {v2, v1}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "null or empty param name in filter. event"

    .line 52
    invoke-virtual {v9, v1, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 53
    :cond_e
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/s0;->t()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 54
    :cond_f
    new-instance v6, Lr/f;

    .line 55
    invoke-direct {v6, v11}, Lr/m;-><init>(I)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/b1;->x()Ljava/util/List;

    move-result-object v7

    .line 57
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_10
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/f1;

    .line 58
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/f1;->v()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 59
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/f1;->K()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 60
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/f1;->v()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/f1;->K()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/f1;->t()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_8

    :cond_11
    const/4 v10, 0x0

    :goto_8
    invoke-virtual {v6, v12, v10}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 61
    :cond_12
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/f1;->I()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 62
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/f1;->v()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/f1;->I()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/f1;->q()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_9

    :cond_13
    const/4 v10, 0x0

    .line 63
    :goto_9
    invoke-virtual {v6, v12, v10}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 64
    :cond_14
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/f1;->M()Z

    move-result v12

    if-eqz v12, :cond_15

    .line 65
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/f1;->v()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/f1;->w()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v12, v10}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 66
    :cond_15
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 67
    invoke-virtual {v2, v1}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/f1;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lc4/O;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Unknown value for param. event, param"

    .line 69
    invoke-virtual {v9, v1, v2, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 70
    :cond_16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->w()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/s0;

    .line 71
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/s0;->w()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/s0;->v()Z

    move-result v10

    if-eqz v10, :cond_17

    const/4 v10, 0x1

    goto :goto_b

    :cond_17
    const/4 v10, 0x0

    .line 72
    :goto_b
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/s0;->t()Ljava/lang/String;

    move-result-object v12

    .line 73
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_18

    .line 74
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 75
    invoke-virtual {v2, v1}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Event has empty param name. event"

    .line 76
    invoke-virtual {v9, v1, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 77
    :cond_18
    invoke-virtual {v6, v12}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 78
    instance-of v11, v14, Ljava/lang/Long;

    if-eqz v11, :cond_1c

    .line 79
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/s0;->x()Z

    move-result v11

    if-nez v11, :cond_19

    .line 80
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 81
    invoke-virtual {v2, v1}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v2, v12}, Lc4/O;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "No number filter for long param. event, param"

    .line 83
    invoke-virtual {v9, v1, v2, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 84
    :cond_19
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/s0;->r()Lcom/google/android/gms/internal/measurement/v0;

    move-result-object v7

    invoke-static {v11, v12, v7}, Lc4/c;->c(JLcom/google/android/gms/internal/measurement/v0;)Ljava/lang/Boolean;

    move-result-object v7

    if-nez v7, :cond_1a

    goto/16 :goto_5

    .line 85
    :cond_1a
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_1b

    .line 86
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_11

    :cond_1b
    :goto_c
    const/4 v11, 0x0

    goto :goto_a

    .line 87
    :cond_1c
    instance-of v11, v14, Ljava/lang/Double;

    if-eqz v11, :cond_1f

    .line 88
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/s0;->x()Z

    move-result v11

    if-nez v11, :cond_1d

    .line 89
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 90
    invoke-virtual {v2, v1}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v2, v12}, Lc4/O;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "No number filter for double param. event, param"

    .line 92
    invoke-virtual {v9, v1, v2, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 93
    :cond_1d
    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/s0;->r()Lcom/google/android/gms/internal/measurement/v0;

    move-result-object v7

    .line 94
    :try_start_0
    new-instance v14, Ljava/math/BigDecimal;

    invoke-direct {v14, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {v11, v12}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v11

    invoke-static {v14, v7, v11, v12}, Lc4/c;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/v0;D)Ljava/lang/Boolean;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    nop

    const/4 v7, 0x0

    :goto_d
    if-nez v7, :cond_1e

    goto/16 :goto_5

    .line 95
    :cond_1e
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_1b

    .line 96
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 97
    :cond_1f
    instance-of v11, v14, Ljava/lang/String;

    if-eqz v11, :cond_26

    .line 98
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/s0;->z()Z

    move-result v11

    if-eqz v11, :cond_20

    .line 99
    check-cast v14, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/s0;->s()Lcom/google/android/gms/internal/measurement/z0;

    move-result-object v7

    .line 100
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 101
    invoke-static {v14, v7, v8}, Lc4/c;->b(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/z0;Lc4/T;)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v16, v5

    move-object/from16 p7, v6

    goto :goto_10

    .line 102
    :cond_20
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/s0;->x()Z

    move-result v11

    if-eqz v11, :cond_25

    .line 103
    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lc4/E1;->q(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 104
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/s0;->r()Lcom/google/android/gms/internal/measurement/v0;

    move-result-object v7

    .line 105
    invoke-static {v14}, Lc4/E1;->q(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_21

    move-object/from16 v16, v5

    move-object/from16 p7, v6

    :goto_e
    const/4 v7, 0x0

    goto :goto_10

    :cond_21
    :try_start_1
    new-instance v11, Ljava/math/BigDecimal;

    .line 106
    invoke-direct {v11, v14}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v16, v5

    move-object/from16 p7, v6

    const-wide/16 v5, 0x0

    :try_start_2
    invoke-static {v11, v7, v5, v6}, Lc4/c;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/v0;D)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v7, v5

    goto :goto_10

    :catch_1
    :goto_f
    nop

    goto :goto_e

    :catch_2
    move-object/from16 v16, v5

    move-object/from16 p7, v6

    goto :goto_f

    :goto_10
    if-nez v7, :cond_22

    goto/16 :goto_5

    .line 107
    :cond_22
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v5, v10, :cond_23

    .line 108
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_11

    :cond_23
    move-object/from16 v6, p7

    move-object/from16 v5, v16

    goto/16 :goto_c

    .line 109
    :cond_24
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 110
    invoke-virtual {v2, v1}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v2, v12}, Lc4/O;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Invalid param value for number filter. event, param"

    .line 112
    invoke-virtual {v9, v1, v2, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 113
    :cond_25
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 114
    invoke-virtual {v2, v1}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v2, v12}, Lc4/O;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "No filter for String param. event, param"

    .line 116
    invoke-virtual {v9, v1, v2, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_26
    if-nez v14, :cond_27

    .line 117
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 118
    invoke-virtual {v2, v1}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v2, v12}, Lc4/O;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Missing param for filter. event, param"

    .line 120
    invoke-virtual {v13, v1, v2, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_11

    .line 122
    :cond_27
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 123
    invoke-virtual {v2, v1}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {v2, v12}, Lc4/O;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Unknown param type. event, param"

    .line 125
    invoke-virtual {v9, v1, v2, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 126
    :cond_28
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 127
    :goto_11
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    if-nez v12, :cond_29

    .line 128
    const-string v1, "null"

    goto :goto_12

    :cond_29
    move-object v1, v12

    :goto_12
    const-string v2, "Event filter result"

    invoke-virtual {v13, v1, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v12, :cond_2a

    const/4 v1, 0x0

    return v1

    .line 129
    :cond_2a
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lc4/c;->c:Ljava/lang/Boolean;

    .line 130
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    const/4 v2, 0x1

    return v2

    :cond_2b
    iput-object v1, v0, Lc4/c;->d:Ljava/lang/Boolean;

    if-eqz v15, :cond_2e

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/b1;->I()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/b1;->t()J

    move-result-wide v1

    .line 131
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 132
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->A()Z

    move-result v2

    if-eqz v2, :cond_2f

    if-eqz v3, :cond_2d

    .line 133
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->C()Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_13

    :cond_2c
    move-object/from16 v1, p1

    :cond_2d
    :goto_13
    iput-object v1, v0, Lc4/c;->f:Ljava/lang/Long;

    :cond_2e
    :goto_14
    const/4 v1, 0x1

    goto :goto_16

    :cond_2f
    if-eqz v3, :cond_31

    .line 134
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->C()Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_15

    :cond_30
    move-object/from16 v1, p2

    :cond_31
    :goto_15
    iput-object v1, v0, Lc4/c;->e:Ljava/lang/Long;

    goto :goto_14

    :goto_16
    return v1

    .line 135
    :cond_32
    :goto_17
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 136
    invoke-static {v5}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    move-result-object v1

    .line 137
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->D()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q0;->r()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_18

    :cond_33
    const/4 v12, 0x0

    :goto_18
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid event filter ID. appId, id"

    .line 138
    invoke-virtual {v9, v1, v2, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public final f(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/y1;Z)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/H3;->b()V

    .line 3
    .line 4
    .line 5
    iget-object v1, v0, Lc4/b;->h:Lc4/d;

    .line 6
    .line 7
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lc4/l0;

    .line 10
    .line 11
    iget-object v2, v1, Lc4/l0;->M:Lc4/h;

    .line 12
    .line 13
    iget-object v3, v0, Lc4/c;->a:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v4, Lc4/E;->D0:Lc4/D;

    .line 16
    .line 17
    invoke-virtual {v2, v3, v4}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, v0, Lc4/b;->i:Lcom/google/android/gms/internal/measurement/s2;

    .line 22
    .line 23
    check-cast v3, Lcom/google/android/gms/internal/measurement/x0;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/x0;->v()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/x0;->w()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/x0;->x()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x1

    .line 39
    if-nez v4, :cond_0

    .line 40
    .line 41
    if-nez v5, :cond_0

    .line 42
    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    :cond_0
    const/4 v4, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v4, 0x0

    .line 48
    :goto_0
    const/4 v5, 0x0

    .line 49
    iget-object v9, v1, Lc4/l0;->O:Lc4/T;

    .line 50
    .line 51
    if-eqz p4, :cond_3

    .line 52
    .line 53
    if-nez v4, :cond_3

    .line 54
    .line 55
    invoke-static {v9}, Lc4/l0;->k(Lc4/s0;)V

    .line 56
    .line 57
    .line 58
    iget v1, v0, Lc4/c;->b:I

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/x0;->y()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/x0;->q()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    :cond_2
    const-string v2, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 79
    .line 80
    iget-object v3, v9, Lc4/T;->T:Lc4/Q;

    .line 81
    .line 82
    invoke-virtual {v3, v1, v5, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return v8

    .line 86
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/x0;->r()Lcom/google/android/gms/internal/measurement/s0;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/s0;->v()Z

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/y1;->H()Z

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    iget-object v1, v1, Lc4/l0;->S:Lc4/O;

    .line 99
    .line 100
    if-eqz v12, :cond_5

    .line 101
    .line 102
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/s0;->x()Z

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    if-nez v12, :cond_4

    .line 107
    .line 108
    invoke-static {v9}, Lc4/l0;->k(Lc4/s0;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/y1;->v()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-virtual {v1, v10}, Lc4/O;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-string v10, "No number filter for long property. property"

    .line 120
    .line 121
    iget-object v11, v9, Lc4/T;->O:Lc4/Q;

    .line 122
    .line 123
    invoke-virtual {v11, v1, v10}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_2

    .line 127
    .line 128
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/y1;->s()J

    .line 129
    .line 130
    .line 131
    move-result-wide v12

    .line 132
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/s0;->r()Lcom/google/android/gms/internal/measurement/v0;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v12, v13, v1}, Lc4/c;->c(JLcom/google/android/gms/internal/measurement/v0;)Ljava/lang/Boolean;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {v1, v11}, Lc4/c;->d(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    goto/16 :goto_2

    .line 145
    .line 146
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/y1;->F()Z

    .line 147
    .line 148
    .line 149
    move-result v12

    .line 150
    if-eqz v12, :cond_7

    .line 151
    .line 152
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/s0;->x()Z

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    if-nez v12, :cond_6

    .line 157
    .line 158
    invoke-static {v9}, Lc4/l0;->k(Lc4/s0;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/y1;->v()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    invoke-virtual {v1, v10}, Lc4/O;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const-string v10, "No number filter for double property. property"

    .line 170
    .line 171
    iget-object v11, v9, Lc4/T;->O:Lc4/Q;

    .line 172
    .line 173
    invoke-virtual {v11, v1, v10}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_2

    .line 177
    .line 178
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/y1;->q()D

    .line 179
    .line 180
    .line 181
    move-result-wide v12

    .line 182
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/s0;->r()Lcom/google/android/gms/internal/measurement/v0;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    :try_start_0
    new-instance v10, Ljava/math/BigDecimal;

    .line 187
    .line 188
    invoke-direct {v10, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    .line 189
    .line 190
    .line 191
    invoke-static {v12, v13}, Ljava/lang/Math;->ulp(D)D

    .line 192
    .line 193
    .line 194
    move-result-wide v12

    .line 195
    invoke-static {v10, v1, v12, v13}, Lc4/c;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/v0;D)Ljava/lang/Boolean;

    .line 196
    .line 197
    .line 198
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :catch_0
    invoke-static {v5, v11}, Lc4/c;->d(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    goto/16 :goto_2

    .line 204
    .line 205
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/y1;->J()Z

    .line 206
    .line 207
    .line 208
    move-result v12

    .line 209
    if-eqz v12, :cond_c

    .line 210
    .line 211
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/s0;->z()Z

    .line 212
    .line 213
    .line 214
    move-result v12

    .line 215
    if-nez v12, :cond_b

    .line 216
    .line 217
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/s0;->x()Z

    .line 218
    .line 219
    .line 220
    move-result v12

    .line 221
    if-nez v12, :cond_8

    .line 222
    .line 223
    invoke-static {v9}, Lc4/l0;->k(Lc4/s0;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/y1;->v()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    invoke-virtual {v1, v10}, Lc4/O;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    const-string v10, "No string or number filter defined. property"

    .line 235
    .line 236
    iget-object v11, v9, Lc4/T;->O:Lc4/Q;

    .line 237
    .line 238
    invoke-virtual {v11, v1, v10}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/y1;->w()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v12

    .line 246
    invoke-static {v12}, Lc4/E1;->q(Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result v12

    .line 250
    if-eqz v12, :cond_a

    .line 251
    .line 252
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/y1;->w()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/s0;->r()Lcom/google/android/gms/internal/measurement/v0;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    invoke-static {v1}, Lc4/E1;->q(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    if-nez v12, :cond_9

    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_9
    :try_start_1
    new-instance v12, Ljava/math/BigDecimal;

    .line 268
    .line 269
    invoke-direct {v12, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const-wide/16 v13, 0x0

    .line 273
    .line 274
    invoke-static {v12, v10, v13, v14}, Lc4/c;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/v0;D)Ljava/lang/Boolean;

    .line 275
    .line 276
    .line 277
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    :catch_1
    :goto_1
    invoke-static {v5, v11}, Lc4/c;->d(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    goto :goto_2

    .line 283
    :cond_a
    invoke-static {v9}, Lc4/l0;->k(Lc4/s0;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/y1;->v()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v10

    .line 290
    invoke-virtual {v1, v10}, Lc4/O;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/y1;->w()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v10

    .line 298
    const-string v11, "Invalid user property value for Numeric number filter. property, value"

    .line 299
    .line 300
    iget-object v12, v9, Lc4/T;->O:Lc4/Q;

    .line 301
    .line 302
    invoke-virtual {v12, v1, v10, v11}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    goto :goto_2

    .line 306
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/y1;->w()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/s0;->s()Lcom/google/android/gms/internal/measurement/z0;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    invoke-static {v9}, Lc4/l0;->k(Lc4/s0;)V

    .line 315
    .line 316
    .line 317
    invoke-static {v1, v5, v9}, Lc4/c;->b(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/z0;Lc4/T;)Ljava/lang/Boolean;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-static {v1, v11}, Lc4/c;->d(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    goto :goto_2

    .line 326
    :cond_c
    invoke-static {v9}, Lc4/l0;->k(Lc4/s0;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/y1;->v()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v10

    .line 333
    invoke-virtual {v1, v10}, Lc4/O;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    const-string v10, "User property has no value, property"

    .line 338
    .line 339
    iget-object v11, v9, Lc4/T;->O:Lc4/Q;

    .line 340
    .line 341
    invoke-virtual {v11, v1, v10}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :goto_2
    invoke-static {v9}, Lc4/l0;->k(Lc4/s0;)V

    .line 345
    .line 346
    .line 347
    if-nez v5, :cond_d

    .line 348
    .line 349
    const-string v1, "null"

    .line 350
    .line 351
    goto :goto_3

    .line 352
    :cond_d
    move-object v1, v5

    .line 353
    :goto_3
    const-string v10, "Property filter result"

    .line 354
    .line 355
    iget-object v9, v9, Lc4/T;->T:Lc4/Q;

    .line 356
    .line 357
    invoke-virtual {v9, v1, v10}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    if-nez v5, :cond_e

    .line 361
    .line 362
    return v7

    .line 363
    :cond_e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 364
    .line 365
    iput-object v1, v0, Lc4/c;->c:Ljava/lang/Boolean;

    .line 366
    .line 367
    if-eqz v6, :cond_10

    .line 368
    .line 369
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-eqz v1, :cond_f

    .line 374
    .line 375
    goto :goto_4

    .line 376
    :cond_f
    return v8

    .line 377
    :cond_10
    :goto_4
    if-eqz p4, :cond_11

    .line 378
    .line 379
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/x0;->v()Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-eqz v1, :cond_12

    .line 384
    .line 385
    :cond_11
    iput-object v5, v0, Lc4/c;->d:Ljava/lang/Boolean;

    .line 386
    .line 387
    :cond_12
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    if-eqz v1, :cond_16

    .line 392
    .line 393
    if-eqz v4, :cond_16

    .line 394
    .line 395
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/y1;->I()Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-eqz v1, :cond_16

    .line 400
    .line 401
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/y1;->t()J

    .line 402
    .line 403
    .line 404
    move-result-wide v4

    .line 405
    if-eqz p1, :cond_13

    .line 406
    .line 407
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    .line 408
    .line 409
    .line 410
    move-result-wide v4

    .line 411
    :cond_13
    if-eqz v2, :cond_14

    .line 412
    .line 413
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/x0;->v()Z

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    if-eqz v1, :cond_14

    .line 418
    .line 419
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/x0;->w()Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    if-nez v1, :cond_14

    .line 424
    .line 425
    if-eqz p2, :cond_14

    .line 426
    .line 427
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    .line 428
    .line 429
    .line 430
    move-result-wide v4

    .line 431
    :cond_14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/x0;->w()Z

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    if-eqz v1, :cond_15

    .line 436
    .line 437
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    iput-object v1, v0, Lc4/c;->f:Ljava/lang/Long;

    .line 442
    .line 443
    goto :goto_5

    .line 444
    :cond_15
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    iput-object v1, v0, Lc4/c;->e:Ljava/lang/Long;

    .line 449
    .line 450
    :cond_16
    :goto_5
    return v8
.end method
