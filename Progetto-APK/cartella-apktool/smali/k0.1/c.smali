.class public final Lk0/c;
.super LD/p;
.source "SourceFile"


# instance fields
.field public b:[I

.field public c:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# virtual methods
.method public final b(LD/t;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    iget-object p1, p1, LD/t;->b:Landroid/app/Notification$Builder;

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lk0/a;->a()Landroid/app/Notification$MediaStyle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v0, v2, v3, v2, v1}, Lk0/b;->a(Landroid/app/Notification$MediaStyle;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;Ljava/lang/Boolean;)Landroid/app/Notification$MediaStyle;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lk0/c;->b:[I

    .line 22
    .line 23
    iget-object v2, p0, Lk0/c;->c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lk0/a;->b(Landroid/app/Notification$MediaStyle;[ILandroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/app/Notification$MediaStyle;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p1, v0}, Lk0/a;->d(Landroid/app/Notification$Builder;Landroid/app/Notification$MediaStyle;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {}, Lk0/a;->a()Landroid/app/Notification$MediaStyle;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lk0/c;->b:[I

    .line 38
    .line 39
    iget-object v2, p0, Lk0/c;->c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 40
    .line 41
    invoke-static {v0, v1, v2}, Lk0/a;->b(Landroid/app/Notification$MediaStyle;[ILandroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/app/Notification$MediaStyle;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {p1, v0}, Lk0/a;->d(Landroid/app/Notification$Builder;Landroid/app/Notification$MediaStyle;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method
