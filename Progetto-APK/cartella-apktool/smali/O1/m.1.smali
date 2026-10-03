.class public final LO1/m;
.super LO1/P;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LO1/m;->a:I

    .line 5
    .line 6
    iput-object p1, p0, LO1/m;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iget v0, p0, LO1/m;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    if-nez p1, :cond_0

    .line 10
    .line 11
    sput-boolean v2, Lpe/hf/black20/ORPlayerMainActivity;->H0:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sput-boolean v1, Lpe/hf/black20/ORPlayerMainActivity;->H0:Z

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :pswitch_1
    if-nez p1, :cond_1

    .line 18
    .line 19
    sget-object p1, Lpe/hf/black20/ORPlayerMainActivity;->THEME:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    sget-object p1, Lpe/hf/black20/ORPlayerMainActivity;->THEME:Ljava/lang/String;

    .line 23
    .line 24
    :goto_1
    return-void

    .line 25
    :pswitch_2
    if-nez p1, :cond_2

    .line 26
    .line 27
    sput-boolean v2, Lpe/hf/black20/ORPlayerMainActivity;->H0:Z

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    sput-boolean v1, Lpe/hf/black20/ORPlayerMainActivity;->H0:Z

    .line 31
    .line 32
    :goto_2
    return-void

    .line 33
    :pswitch_3
    if-nez p1, :cond_3

    .line 34
    .line 35
    sget-object p1, Lpe/hf/black20/ORPlayerMainActivity;->THEME:Ljava/lang/String;

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_3
    sget-object p1, Lpe/hf/black20/ORPlayerMainActivity;->THEME:Ljava/lang/String;

    .line 39
    .line 40
    :goto_3
    return-void

    .line 41
    :pswitch_4
    if-nez p1, :cond_4

    .line 42
    .line 43
    sput-boolean v2, Lpe/hf/black20/ORPlayerMainActivity;->H0:Z

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_4
    sput-boolean v1, Lpe/hf/black20/ORPlayerMainActivity;->H0:Z

    .line 47
    .line 48
    :goto_4
    return-void

    .line 49
    :pswitch_5
    if-nez p1, :cond_5

    .line 50
    .line 51
    sput-boolean v2, Lpe/hf/black20/ORPlayerMainActivity;->H0:Z

    .line 52
    .line 53
    goto :goto_5

    .line 54
    :cond_5
    sput-boolean v1, Lpe/hf/black20/ORPlayerMainActivity;->H0:Z

    .line 55
    .line 56
    :goto_5
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    .line 1
    iget p2, p0, LO1/m;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p2, p0, LO1/m;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p2, LO1/p;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v0, p2, LO1/p;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget v1, p2, LO1/p;->r:I

    .line 26
    .line 27
    sub-int v2, v0, v1

    .line 28
    .line 29
    iget v3, p2, LO1/p;->a:I

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    if-lez v2, :cond_0

    .line 34
    .line 35
    if-lt v1, v3, :cond_0

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 40
    :goto_0
    iput-boolean v2, p2, LO1/p;->t:Z

    .line 41
    .line 42
    iget-object v2, p2, LO1/p;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget v6, p2, LO1/p;->q:I

    .line 49
    .line 50
    sub-int v7, v2, v6

    .line 51
    .line 52
    if-lez v7, :cond_1

    .line 53
    .line 54
    if-lt v6, v3, :cond_1

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 v3, 0x0

    .line 59
    :goto_1
    iput-boolean v3, p2, LO1/p;->u:Z

    .line 60
    .line 61
    iget-boolean v7, p2, LO1/p;->t:Z

    .line 62
    .line 63
    if-nez v7, :cond_2

    .line 64
    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    iget p1, p2, LO1/p;->v:I

    .line 68
    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p2, v4}, LO1/p;->g(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    .line 76
    .line 77
    if-eqz v7, :cond_3

    .line 78
    .line 79
    int-to-float p1, p1

    .line 80
    int-to-float v4, v1

    .line 81
    div-float v7, v4, v3

    .line 82
    .line 83
    add-float/2addr v7, p1

    .line 84
    mul-float v7, v7, v4

    .line 85
    .line 86
    int-to-float p1, v0

    .line 87
    div-float/2addr v7, p1

    .line 88
    float-to-int p1, v7

    .line 89
    iput p1, p2, LO1/p;->l:I

    .line 90
    .line 91
    mul-int p1, v1, v1

    .line 92
    .line 93
    div-int/2addr p1, v0

    .line 94
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iput p1, p2, LO1/p;->k:I

    .line 99
    .line 100
    :cond_3
    iget-boolean p1, p2, LO1/p;->u:Z

    .line 101
    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    int-to-float p1, p3

    .line 105
    int-to-float p3, v6

    .line 106
    div-float v0, p3, v3

    .line 107
    .line 108
    add-float/2addr v0, p1

    .line 109
    mul-float v0, v0, p3

    .line 110
    .line 111
    int-to-float p1, v2

    .line 112
    div-float/2addr v0, p1

    .line 113
    float-to-int p1, v0

    .line 114
    iput p1, p2, LO1/p;->o:I

    .line 115
    .line 116
    mul-int p1, v6, v6

    .line 117
    .line 118
    div-int/2addr p1, v2

    .line 119
    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iput p1, p2, LO1/p;->n:I

    .line 124
    .line 125
    :cond_4
    iget p1, p2, LO1/p;->v:I

    .line 126
    .line 127
    if-eqz p1, :cond_5

    .line 128
    .line 129
    if-ne p1, v5, :cond_6

    .line 130
    .line 131
    :cond_5
    invoke-virtual {p2, v5}, LO1/p;->g(I)V

    .line 132
    .line 133
    .line 134
    :cond_6
    :goto_2
    return-void

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
