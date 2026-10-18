.class public final LB/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic G:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LB/f;->G:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;)I
    .locals 4

    .line 1
    iget v0, p0, LB/f;->G:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, La2/d;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, La2/d;

    .line 19
    .line 20
    iget-boolean v0, p1, La2/d;->a:Z

    .line 21
    .line 22
    iget-boolean v3, p2, La2/d;->a:Z

    .line 23
    .line 24
    if-eq v0, v3, :cond_0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget p1, p1, La2/d;->e:I

    .line 31
    .line 32
    iget p2, p2, La2/d;->e:I

    .line 33
    .line 34
    sub-int v1, p1, p2

    .line 35
    .line 36
    :cond_1
    :goto_0
    return v1

    .line 37
    :pswitch_0
    sget-object v0, LN/N;->a:Ljava/util/WeakHashMap;

    .line 38
    .line 39
    invoke-static {p1}, LN/E;->g(Landroid/view/View;)F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {p2}, LN/E;->g(Landroid/view/View;)F

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    cmpl-float v0, p1, p2

    .line 48
    .line 49
    if-lez v0, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    cmpg-float p1, p1, p2

    .line 53
    .line 54
    if-gez p1, :cond_3

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/4 v1, 0x0

    .line 59
    :goto_1
    return v1

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    iget v0, p0, LB/f;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/Map;

    .line 7
    .line 8
    check-cast p2, Ljava/util/Map;

    .line 9
    .line 10
    const-string v0, "end"

    .line 11
    .line 12
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 13
    .line 14
    const-string v2, "yyyyMMddHHmmss"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    .line 40
    .line 41
    .line 42
    move-result p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return p1

    .line 44
    :catch_0
    move-exception p1

    .line 45
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw p2

    .line 51
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    .line 52
    .line 53
    check-cast p2, Ljava/lang/Long;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 69
    .line 70
    check-cast p2, Ljava/lang/String;

    .line 71
    .line 72
    sget-object v0, Lf3/o;->f:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    sub-int/2addr p1, p2

    .line 83
    return p1

    .line 84
    :pswitch_2
    check-cast p1, [B

    .line 85
    .line 86
    check-cast p2, [B

    .line 87
    .line 88
    array-length p1, p1

    .line 89
    array-length p2, p2

    .line 90
    sub-int/2addr p1, p2

    .line 91
    return p1

    .line 92
    :pswitch_3
    check-cast p1, Landroid/view/View;

    .line 93
    .line 94
    check-cast p2, Landroid/view/View;

    .line 95
    .line 96
    invoke-virtual {p0, p1, p2}, LB/f;->a(Landroid/view/View;Landroid/view/View;)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    return p1

    .line 101
    :pswitch_4
    check-cast p1, La2/c;

    .line 102
    .line 103
    check-cast p2, La2/c;

    .line 104
    .line 105
    iget p1, p1, La2/c;->b:I

    .line 106
    .line 107
    iget p2, p2, La2/c;->b:I

    .line 108
    .line 109
    sub-int/2addr p1, p2

    .line 110
    return p1

    .line 111
    :pswitch_5
    check-cast p1, LO1/q;

    .line 112
    .line 113
    check-cast p2, LO1/q;

    .line 114
    .line 115
    iget-object v0, p1, LO1/q;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    .line 117
    const/4 v1, 0x0

    .line 118
    const/4 v2, 0x1

    .line 119
    if-nez v0, :cond_0

    .line 120
    .line 121
    const/4 v3, 0x1

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    const/4 v3, 0x0

    .line 124
    :goto_0
    iget-object v4, p2, LO1/q;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    .line 126
    if-nez v4, :cond_1

    .line 127
    .line 128
    const/4 v4, 0x1

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    const/4 v4, 0x0

    .line 131
    :goto_1
    const/4 v5, -0x1

    .line 132
    if-eq v3, v4, :cond_4

    .line 133
    .line 134
    if-nez v0, :cond_3

    .line 135
    .line 136
    :cond_2
    const/4 v1, 0x1

    .line 137
    goto :goto_3

    .line 138
    :cond_3
    :goto_2
    const/4 v1, -0x1

    .line 139
    goto :goto_3

    .line 140
    :cond_4
    iget-boolean v0, p1, LO1/q;->a:Z

    .line 141
    .line 142
    iget-boolean v3, p2, LO1/q;->a:Z

    .line 143
    .line 144
    if-eq v0, v3, :cond_5

    .line 145
    .line 146
    if-eqz v0, :cond_2

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    iget v0, p2, LO1/q;->b:I

    .line 150
    .line 151
    iget v2, p1, LO1/q;->b:I

    .line 152
    .line 153
    sub-int/2addr v0, v2

    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    move v1, v0

    .line 157
    goto :goto_3

    .line 158
    :cond_6
    iget p1, p1, LO1/q;->c:I

    .line 159
    .line 160
    iget p2, p2, LO1/q;->c:I

    .line 161
    .line 162
    sub-int/2addr p1, p2

    .line 163
    if-eqz p1, :cond_7

    .line 164
    .line 165
    move v1, p1

    .line 166
    :cond_7
    :goto_3
    return v1

    .line 167
    :pswitch_6
    check-cast p1, Landroid/view/View;

    .line 168
    .line 169
    check-cast p2, Landroid/view/View;

    .line 170
    .line 171
    invoke-virtual {p0, p1, p2}, LB/f;->a(Landroid/view/View;Landroid/view/View;)I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    return p1

    .line 176
    nop

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
