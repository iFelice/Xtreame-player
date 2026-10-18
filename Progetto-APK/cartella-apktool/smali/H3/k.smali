.class public final LH3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH3/o;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LH3/o;

.field public final synthetic c:LH3/n;


# direct methods
.method public synthetic constructor <init>(LH3/n;LH3/o;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LH3/k;->a:I

    .line 5
    .line 6
    iput-object p1, p0, LH3/k;->c:LH3/n;

    .line 7
    .line 8
    iput-object p2, p0, LH3/k;->b:LH3/o;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JJJ)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, LH3/k;->a:I

    .line 3
    .line 4
    iget-object v2, v0, LH3/k;->b:LH3/o;

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    move-object v3, p1

    .line 12
    move-wide v4, p2

    .line 13
    move-wide v6, p4

    .line 14
    move-wide/from16 v8, p6

    .line 15
    .line 16
    invoke-interface/range {v2 .. v9}, LH3/o;->a(Ljava/lang/String;JJJ)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :pswitch_0
    if-eqz v2, :cond_1

    .line 21
    .line 22
    move-object v3, p1

    .line 23
    move-wide v4, p2

    .line 24
    move-wide v6, p4

    .line 25
    move-wide/from16 v8, p6

    .line 26
    .line 27
    invoke-interface/range {v2 .. v9}, LH3/o;->a(Ljava/lang/String;JJJ)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(IJJJLH3/m;Ljava/lang/String;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, LH3/k;->a:I

    .line 3
    .line 4
    iget-object v2, v0, LH3/k;->c:LH3/n;

    .line 5
    .line 6
    iget-object v3, v0, LH3/k;->b:LH3/o;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    if-eqz v3, :cond_2

    .line 12
    .line 13
    const/16 v1, 0x7d1

    .line 14
    .line 15
    move v4, p1

    .line 16
    if-ne v4, v1, :cond_1

    .line 17
    .line 18
    iget v3, v2, LH3/n;->i:I

    .line 19
    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x1

    .line 25
    new-array v4, v4, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    aput-object v3, v4, v5

    .line 29
    .line 30
    iget-object v3, v2, LH3/q;->a:LH3/b;

    .line 31
    .line 32
    iget-object v5, v3, LH3/b;->a:Ljava/lang/String;

    .line 33
    .line 34
    const-string v6, "Possibility of local queue out of sync with receiver queue. Refetching sequence number. Current Local Sequence Number = %d"

    .line 35
    .line 36
    invoke-virtual {v3, v6, v4}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object v2, v2, LH3/n;->h:LC2/g;

    .line 44
    .line 45
    iget-object v2, v2, LC2/g;->H:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, LE3/j;

    .line 48
    .line 49
    iget-object v2, v2, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, LE3/h;

    .line 66
    .line 67
    check-cast v3, LF3/k;

    .line 68
    .line 69
    iget v4, v3, LF3/k;->a:I

    .line 70
    .line 71
    packed-switch v4, :pswitch_data_1

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :pswitch_0
    iget-object v3, v3, LF3/k;->b:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v3, LE3/d;

    .line 78
    .line 79
    invoke-virtual {v3}, LE3/d;->d()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const/16 v5, 0x7d1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    move v5, v4

    .line 87
    :goto_1
    iget-object v4, v0, LH3/k;->b:LH3/o;

    .line 88
    .line 89
    move-wide/from16 v6, p2

    .line 90
    .line 91
    move-wide/from16 v8, p4

    .line 92
    .line 93
    move-wide/from16 v10, p6

    .line 94
    .line 95
    move-object/from16 v12, p8

    .line 96
    .line 97
    move-object/from16 v13, p9

    .line 98
    .line 99
    invoke-interface/range {v4 .. v13}, LH3/o;->b(IJJJLH3/m;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    return-void

    .line 103
    :pswitch_1
    move v4, p1

    .line 104
    const/4 v1, 0x0

    .line 105
    iput-object v1, v2, LH3/n;->g:Ljava/lang/Long;

    .line 106
    .line 107
    if-eqz v3, :cond_3

    .line 108
    .line 109
    move v4, p1

    .line 110
    move-wide/from16 v5, p2

    .line 111
    .line 112
    move-wide/from16 v7, p4

    .line 113
    .line 114
    move-wide/from16 v9, p6

    .line 115
    .line 116
    move-object/from16 v11, p8

    .line 117
    .line 118
    move-object/from16 v12, p9

    .line 119
    .line 120
    invoke-interface/range {v3 .. v12}, LH3/o;->b(IJJJLH3/m;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
