.class Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;
.super Ll/C;
.source "SourceFile"


# instance fields
.field public final J:Landroid/graphics/drawable/AnimationDrawable;

.field public final K:Landroid/graphics/drawable/AnimationDrawable;

.field public final L:Ljava/lang/String;

.field public final M:Ljava/lang/String;

.field public N:Z

.field public O:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Ll/C;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    const p2, 0x7f0808d7

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    .line 13
    .line 14
    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->J:Landroid/graphics/drawable/AnimationDrawable;

    .line 15
    .line 16
    const v1, 0x7f0808d6

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 24
    .line 25
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->K:Landroid/graphics/drawable/AnimationDrawable;

    .line 26
    .line 27
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 28
    .line 29
    new-instance v3, Landroid/util/TypedValue;

    .line 30
    .line 31
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x1

    .line 39
    const v6, 0x7f040108

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v6, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 43
    .line 44
    .line 45
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    .line 46
    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    .line 54
    .line 55
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 61
    .line 62
    :goto_0
    sget-object v4, LG/a;->a:Ljava/lang/ThreadLocal;

    .line 63
    .line 64
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const/16 v5, 0xff

    .line 69
    .line 70
    if-ne v4, v5, :cond_3

    .line 71
    .line 72
    const/4 v4, -0x1

    .line 73
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-ge v6, v5, :cond_1

    .line 78
    .line 79
    invoke-static {v4, v3}, LG/a;->c(II)I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    const/4 v5, -0x1

    .line 85
    :goto_1
    invoke-static {v5}, LG/a;->b(I)D

    .line 86
    .line 87
    .line 88
    move-result-wide v5

    .line 89
    const-wide v7, 0x3fa999999999999aL    # 0.05

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    add-double/2addr v5, v7

    .line 95
    invoke-static {v3}, LG/a;->b(I)D

    .line 96
    .line 97
    .line 98
    move-result-wide v9

    .line 99
    add-double/2addr v9, v7

    .line 100
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(DD)D

    .line 101
    .line 102
    .line 103
    move-result-wide v7

    .line 104
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(DD)D

    .line 105
    .line 106
    .line 107
    move-result-wide v5

    .line 108
    div-double/2addr v7, v5

    .line 109
    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    .line 110
    .line 111
    cmpl-double v3, v7, v5

    .line 112
    .line 113
    if-ltz v3, :cond_2

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_2
    const/high16 v4, -0x22000000

    .line 117
    .line 118
    :goto_2
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 119
    .line 120
    invoke-direct {v2, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 127
    .line 128
    .line 129
    const v1, 0x7f13013d

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->L:Ljava/lang/String;

    .line 137
    .line 138
    const v2, 0x7f13013b

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->M:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p0, p1}, Ll/C;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    new-instance p1, Landroidx/mediarouter/app/a;

    .line 158
    .line 159
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/a;-><init>(Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;)V

    .line 160
    .line 161
    .line 162
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 167
    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v0, "background can not be translucent: #"

    .line 171
    .line 172
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p1
.end method


# virtual methods
.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->O:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method
