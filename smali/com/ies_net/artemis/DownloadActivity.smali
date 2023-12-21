.class public Lcom/ies_net/artemis/DownloadActivity;
.super Landroid/app/Activity;
.source "DownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ies_net/artemis/DownloadActivity$HttpTask;
    }
.end annotation


# instance fields
.field private dir:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private self:Lcom/ies_net/artemis/DownloadActivity;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ies_net/artemis/DownloadActivity;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ies_net/artemis/DownloadActivity;->dir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ies_net/artemis/DownloadActivity;)Lcom/ies_net/artemis/DownloadActivity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ies_net/artemis/DownloadActivity;->self:Lcom/ies_net/artemis/DownloadActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ies_net/artemis/DownloadActivity;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ies_net/artemis/DownloadActivity;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ies_net/artemis/DownloadActivity;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ies_net/artemis/DownloadActivity;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 430
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 431
    invoke-virtual {p0, v0, v0}, Lcom/ies_net/artemis/DownloadActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 389
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 391
    invoke-virtual {p0}, Lcom/ies_net/artemis/DownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "DIR"

    .line 393
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ies_net/artemis/DownloadActivity;->dir:Ljava/lang/String;

    const-string v0, "NAME"

    .line 394
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ies_net/artemis/DownloadActivity;->name:Ljava/lang/String;

    const-string v0, "URL"

    .line 395
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ies_net/artemis/DownloadActivity;->url:Ljava/lang/String;

    .line 396
    iput-object p0, p0, Lcom/ies_net/artemis/DownloadActivity;->self:Lcom/ies_net/artemis/DownloadActivity;

    .line 398
    iget-object p1, p0, Lcom/ies_net/artemis/DownloadActivity;->dir:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ies_net/artemis/DownloadActivity;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ies_net/artemis/DownloadActivity;->url:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/ies_net/artemis/DownloadActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x400480

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 410
    new-instance p1, Lcom/ies_net/artemis/DownloadActivity$1;

    invoke-direct {p1, p0}, Lcom/ies_net/artemis/DownloadActivity$1;-><init>(Lcom/ies_net/artemis/DownloadActivity;)V

    invoke-virtual {p0, p1}, Lcom/ies_net/artemis/DownloadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 400
    :cond_1
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    .line 402
    invoke-virtual {p0, v0, p1}, Lcom/ies_net/artemis/DownloadActivity;->setResult(ILandroid/content/Intent;)V

    .line 403
    invoke-virtual {p0}, Lcom/ies_net/artemis/DownloadActivity;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 425
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 415
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/ies_net/artemis/DownloadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
