.class public final Ll/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ll/K0;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ll/K0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    iget p1, p0, Ll/K0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->j0:Landroid/widget/ListView;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    .line 9
    .line 10
    .line 11
    :pswitch_0
    return-void

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5

    .line 1
    iget p1, p0, Ll/K0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_2

    .line 7
    .line 8
    sget-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->k0:Landroid/widget/ListView;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    new-instance v0, Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-direct {v0, p2, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    int-to-double v1, p2

    .line 35
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 36
    .line 37
    mul-double v1, v1, v3

    .line 38
    .line 39
    sget-object p2, Lpe/hf/black20/epg/EPGActivityXMLTV;->k0:Landroid/widget/ListView;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p2, p1, v0, v3}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    int-to-double p1, p1

    .line 54
    cmpl-double v3, p1, v1

    .line 55
    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    int-to-double p1, p1

    .line 67
    const-wide/high16 v3, 0x4004000000000000L    # 2.5

    .line 68
    .line 69
    div-double/2addr v1, v3

    .line 70
    cmpg-double v3, p1, v1

    .line 71
    .line 72
    if-gez v3, :cond_0

    .line 73
    .line 74
    sget-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->k0:Landroid/widget/ListView;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    int-to-double p1, p1

    .line 93
    cmpl-double v0, p1, v1

    .line 94
    .line 95
    if-lez v0, :cond_1

    .line 96
    .line 97
    sget-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->k0:Landroid/widget/ListView;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    sget-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->k0:Landroid/widget/ListView;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_0
    return-void

    .line 117
    :pswitch_0
    const/4 p1, 0x1

    .line 118
    if-ne p2, p1, :cond_4

    .line 119
    .line 120
    iget-object p1, p0, Ll/K0;->b:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Ll/M0;

    .line 123
    .line 124
    iget-object p2, p1, Ll/M0;->e0:Ll/G;

    .line 125
    .line 126
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    const/4 v0, 0x2

    .line 131
    if-ne p2, v0, :cond_3

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    iget-object p2, p1, Ll/M0;->e0:Ll/G;

    .line 135
    .line 136
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    if-eqz p2, :cond_4

    .line 141
    .line 142
    iget-object p2, p1, Ll/M0;->a0:Landroid/os/Handler;

    .line 143
    .line 144
    iget-object p1, p1, Ll/M0;->W:Ll/F0;

    .line 145
    .line 146
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Ll/F0;->run()V

    .line 150
    .line 151
    .line 152
    :cond_4
    :goto_1
    return-void

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
