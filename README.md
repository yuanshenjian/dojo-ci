## dojo-ci

这是一个关于CI的Dojo，旨在分享 [程序袁](http://blog.sjyuan.cc) 在 [ThoughtWorks](https://thoughtworks.com/) 中经历项目的CI实践。如果你是Dev或QA或BA，并且还不是很了解CI，那么Dojo将会对你很有帮助。如果你已经熟悉CI并正在实践CI，那么Dojo对你也是有帮助的，因为这里里面将会介绍优秀的实践。

此次Dojo旨在引导那些对CI有兴趣的IT从业者正确地认识CI，通过Step by step的方式来搭建Jenkins CI平台，并借鉴一些优秀的实践来改善CI设施，从而优化交付流程，提高软件的交付质量。

Dojo一期规划了四节课程：

```
1. CI基础 & Setup环境
2. 手把手搭建CI
3. 构建可持续部署Pipeline（策略和实践）
4. 持续交付
```

---

### CI基础 & Setup环境
从`What`、`Why`、`How`三个方面介绍了CI，涵盖了CI的原则和一些最佳实践，最后以利用[Vagrant](https://www.vagrantup.com/)在Mac OSX上Setup了一个Ubuntu环境，用做CI服务器。

详细内容请参考 [程序袁的博客•dojo-ci-basics](http://blog.sjyuan.cc/dojo/ci/basics)

---

### 手把手搭建CI
基于上节课所搭建的CI Server，来手把手创建一个可以报告测试结果的CI，内容涵盖了两大部分， `配置Jenkins` 和 `Step by step Build`，Jenkins基础配置如下：

```
1. 配置系统环境。
2. 安装系统工具。
3. 安装实用Plugin。
4. 配置用户权限。
```

Step by step Build如下：

```
1. 构建触发策略。
2. 测试Success & Failure。
3. 测试报告。
4. 邮件通知。
```
详细内容请参考 [程序袁的博客•dojo-ci-step-by-step](http://blog.sjyuan.cc/dojo/ci/basics)

