.class public final LD/m;
.super LD/p;
.source "SourceFile"


# instance fields
.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public c:Landroidx/core/graphics/drawable/IconCompat;

.field public d:Z


# virtual methods
.method public final b(LD/t;)V
    .locals 7

    .line 1
    iget-object v0, p1, LD/t;->b:Landroid/app/Notification$Builder;

    .line 2
    .line 3
    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {v1, v0}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, LD/m;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/16 v4, 0x1f

    .line 17
    .line 18
    iget-object p1, p1, LD/t;->a:Landroid/content/Context;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    if-lt v5, v4, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Landroidx/core/graphics/drawable/IconCompat;->j(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v1, v2}, LD/l;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->g()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    iget-object v2, p0, LD/m;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->d()Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_1
    :goto_0
    iget-boolean v2, p0, LD/m;->d:Z

    .line 51
    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    iget-object v2, p0, LD/m;->c:Landroidx/core/graphics/drawable/IconCompat;

    .line 55
    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 63
    .line 64
    const/16 v6, 0x17

    .line 65
    .line 66
    if-lt v5, v6, :cond_3

    .line 67
    .line 68
    invoke-virtual {v2, p1}, Landroidx/core/graphics/drawable/IconCompat;->j(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v1, p1}, LD/k;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->g()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-ne p1, v3, :cond_4

    .line 81
    .line 82
    iget-object p1, p0, LD/m;->c:Landroidx/core/graphics/drawable/IconCompat;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->d()Landroid/graphics/Bitmap;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    invoke-virtual {v1, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    .line 97
    if-lt p1, v4, :cond_6

    .line 98
    .line 99
    const/4 p1, 0x0

    .line 100
    invoke-static {v1, p1}, LD/l;->c(Landroid/app/Notification$BigPictureStyle;Z)V

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v0}, LD/l;->b(Landroid/app/Notification$BigPictureStyle;Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    :cond_6
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "androidx.core.app.NotificationCompat$BigPictureStyle"

    .line 2
    .line 3
    return-object v0
.end method
