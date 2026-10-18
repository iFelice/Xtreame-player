.class public final LA0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/G;


# instance fields
.field public final a:Lm0/k;

.field public final b:Lm0/i;


# direct methods
.method public constructor <init>(Lm0/k;Lm0/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA0/h;->a:Lm0/k;

    .line 5
    .line 6
    iput-object p2, p0, LA0/h;->b:Lm0/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e(Landroid/content/Context;Z)LA0/K;
    .locals 2

    .line 1
    new-instance p2, LA0/k;

    .line 2
    .line 3
    iget-object v0, p0, LA0/h;->a:Lm0/k;

    .line 4
    .line 5
    iget-object v1, p0, LA0/h;->b:Lm0/i;

    .line 6
    .line 7
    invoke-direct {p2, p1, v0, v1}, LA0/k;-><init>(Landroid/content/Context;Lm0/k;Lm0/i;)V

    .line 8
    .line 9
    .line 10
    return-object p2
.end method
