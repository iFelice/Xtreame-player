.class public abstract Li4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La0/b;

.field public static final b:La0/a;

.field public static final c:La0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, La0/b;

    .line 7
    .line 8
    invoke-direct {v0}, La0/b;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, Li4/a;->a:La0/b;

    .line 12
    .line 13
    new-instance v0, La0/a;

    .line 14
    .line 15
    invoke-direct {v0}, La0/a;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Li4/a;->b:La0/a;

    .line 19
    .line 20
    new-instance v0, La0/c;

    .line 21
    .line 22
    invoke-direct {v0}, La0/c;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Li4/a;->c:La0/c;

    .line 26
    .line 27
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
