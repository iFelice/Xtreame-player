.class public final Lb7/i1;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public c:Ljava/util/HashMap;

.field public d:Lc7/d;

.field public e:Lh7/i;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb7/i1;->c:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lb7/i1;->a:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lb7/i1;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb7/i1;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    new-instance p2, Lc7/d;

    .line 2
    .line 3
    iget-object v0, p0, Lb7/i1;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p2, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lb7/i1;->d:Lc7/d;

    .line 9
    .line 10
    new-instance p2, Lc7/a;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {p2, v0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    const-string v2, "Default (XC)"

    .line 17
    .line 18
    const-string v3, "ORT_PROFILE"

    .line 19
    .line 20
    invoke-static {v3, v2, p2}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lb7/i1;->e:Lh7/i;

    .line 25
    .line 26
    const-string p2, "layout_inflater"

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Landroid/view/LayoutInflater;

    .line 33
    .line 34
    const v2, 0x7f0e0040

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iget-object p3, p0, Lb7/i1;->b:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/util/HashMap;

    .line 48
    .line 49
    iput-object p1, p0, Lb7/i1;->c:Ljava/util/HashMap;

    .line 50
    .line 51
    const p1, 0x7f0b0510

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/TextView;

    .line 59
    .line 60
    const p3, 0x7f0b0292

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    check-cast p3, Landroid/widget/ImageView;

    .line 68
    .line 69
    new-instance v2, Lc7/a;

    .line 70
    .line 71
    invoke-direct {v2, v0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lb7/i1;->d:Lc7/d;

    .line 75
    .line 76
    iget-object v3, p0, Lb7/i1;->c:Ljava/util/HashMap;

    .line 77
    .line 78
    const-string v4, "stream_id"

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Ljava/lang/String;

    .line 85
    .line 86
    iget-object v4, p0, Lb7/i1;->e:Lh7/i;

    .line 87
    .line 88
    iget-object v4, v4, Lh7/i;->a:Ljava/lang/String;

    .line 89
    .line 90
    const-string v5, "_live"

    .line 91
    .line 92
    invoke-virtual {v2, v3, v4, v5}, Lc7/d;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const-string v3, "yes"

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_0

    .line 103
    .line 104
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    const/16 v1, 0x8

    .line 109
    .line 110
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    :goto_0
    iget-object p3, p0, Lb7/i1;->c:Ljava/util/HashMap;

    .line 114
    .line 115
    const-string v1, "name"

    .line 116
    .line 117
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    check-cast p3, Ljava/lang/CharSequence;

    .line 122
    .line 123
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    const v0, 0x7f06002f

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 138
    .line 139
    .line 140
    return-object p2
.end method
