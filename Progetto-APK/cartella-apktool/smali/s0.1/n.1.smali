.class public final Ls0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/h;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ls0/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Ls0/p;

    invoke-direct {v0}, Ls0/p;-><init>()V

    invoke-direct {p0, p1, v0}, Ls0/n;-><init>(Landroid/content/Context;Ls0/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ls0/x;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ls0/n;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Ls0/n;->b:Ls0/h;

    return-void
.end method


# virtual methods
.method public final a()Ls0/i;
    .locals 3

    .line 1
    new-instance v0, Ls0/o;

    .line 2
    .line 3
    iget-object v1, p0, Ls0/n;->b:Ls0/h;

    .line 4
    .line 5
    invoke-interface {v1}, Ls0/h;->a()Ls0/i;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Ls0/n;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Ls0/o;-><init>(Landroid/content/Context;Ls0/i;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
